class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def new
        @group = Group.new
    end

    def create
        @group = Group.find(params[:id])
        @group.new(group_params)
        redirect_to groups_path
    end

    private

    def group_params
        params.require(:group).permit(:title, :description)
    end
end
