class Account::PostsController < ApplicationController
    def index
        # @group = Group.find(params[:group_id])
        @posts = current_user.posts
    end
end
