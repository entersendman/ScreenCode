class PagesController < ApplicationController
	def index
	end

	def user 
		@user = User.find(params[:id])
		@user_posts = @user.posts.limit(2)
	end
end
