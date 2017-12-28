class PostController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
	end

	def create
		post = Post.new(post_params)

		if post.save
			redirect_to "/posts"
		else
			redirect_to "/posts/new"
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		post = Post.find(params[:id])

		if post.update(post_params)
			redirect_to "/posts/#{post.id}"
		else
			redirect_to "/posts/#{post.id}/edit"
		end
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		redirect_to "/posts/"
	end
	
	private

	def post_params
		params.require(:post).permit(:title, :text)
	end
end
