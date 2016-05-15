class CommentsController < ApplicationController
	def create
		comment = Comment.new(comment_params)
		token = recaptcha['g-recaptcha-response']
		comment.save if Recaptcha.valid?(token, request.remote_ip)
		redirect_to :root
	end

	private
	def	comment_params
		params.require(:comment).permit(:name, :text, :post_id)
	end
	def recaptcha
		params.permit('g-recaptcha-response')
	end

end
