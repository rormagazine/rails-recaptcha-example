class PostsController < ApplicationController 
	def index
		@posts = Post.includes(:comments).all
		@comment = Comment.new
	end
end
