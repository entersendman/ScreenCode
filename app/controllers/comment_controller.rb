class CommentController < ApplicationController

def create
	@post = Post.find(params[:id])
	comment =  current_user.comments.build(comment_params)

	if comment.save
		redirect_to post_path(@post)
	else
		flash[:errors] = comment.errors.full_messages
		redirect_to post_path(@post)
	end
	
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
