class PostController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		post = current_user.posts.build(post_params)

		if post.save
			redirect_to :root
		else
			flash[:errors] = post.errors.full_messages
			redirect_to :posts_new
		end
	end

	def show
		@post = Post.find(params[:id])
		@comments = Comment.where(post_id: @post.id)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		post = Post.find(params[:id])

		if post.update(post_params)
			redirect_to post_path(post.id)
		else
			flash[:errors] = post.errors.full_messages
			redirect_to post_edit_path(post.id)
		end
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		redirect_to :root
	end
	
	private

	def post_params
		params.require(:post).permit(:title, :text, :code)
	end
end
