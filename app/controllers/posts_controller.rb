class PostsController < ApplicationController
	def index
		@posts = Post.all.order("created_at DESC")
	end


	private
		def post_params
			params.require(:post).permit(:title, :body)
		end

end
