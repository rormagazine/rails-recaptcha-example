class Recaptcha
	def self.valid?(token, ip)
    secret = ENV['RECAPTHA_SECRET']
		raise "No reCAPTHA secret has been specified" if secret.blank?
		begin
			uri = URI.parse("https://www.google.com/recaptcha/api/siteverify")
			response = Net::HTTP.post_form(uri, {
				secret: secret,
				response: token,
				remoteip: ip
			})

			data = JSON.parse(response.body)
			return data["success"]
		rescue
			raise "Could not verify reCAPTCHA"
		end
		return false
	end
end
