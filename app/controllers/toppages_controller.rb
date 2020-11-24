class ToppagesController < ApplicationController
  def index
    if logged_in?
      @todo = current_user.todos.build
      @todos = current_user.todos.order(id: :desc).page(params[:page])
    end
  end
end
