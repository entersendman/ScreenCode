class CommentController < ApplicationController

def create
	@post = Post.find(params[:id])
	@comment = Comment.create(comment_params)
	redirect_to post_path(@post)
end

def destroy
	comment = Comment.find(params[:id])
	post_id = comment.post_id
	comment.destroy
	redirect_to post_path(post_id)
end

private

def comment_params
	params.require(:comment).permit(:comment_text, :post_id)
end
end
