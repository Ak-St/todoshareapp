class TodosController < ApplicationController
  before_action :require_user_logged_in

  def index
    @todos = Todo.all
  end
  
  def show
    @todo = Todo.find(params[:id])
  end
  
  def new
    @todo = Todo.new
  end
  
  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      flash[:success] = 'Todo was added.'
      redirect_to @todo
    else
      flash.now[:danger] = 'Failed to add new ToDo.'
      render :new
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(todo_params)
      flash[:success] = 'Successfully saved'
      redirect_to @todo
    else
      flash.now[:danger] = 'Update was Failed.'
      render :edit
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    
    flash[:success] = 'Todo was deleted.'
    redirect_to todos_url
  end

  private

  def todo_params
    params.require(:todo).permit(:content, :name, :duedate, :status, :remark)
  end

end