class LikesController < ApplicationController
    before_action :todo_params
    
    def create
        Like.create(user_id: current_user.id, todo_id: params[:id])
    end
    
    def destroy
        Like.find_by(user_id: current_user.id, todo_id: params[:id]).destroy
    end
    
    private
    
    def todo_params
        @todo = Todo.find(params[:id])
    end
end