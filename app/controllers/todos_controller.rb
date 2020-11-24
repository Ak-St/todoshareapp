class TodosController < ApplicationController
  before_action :require_user_logged_in

  def index
    @todos = Todo.all.page(params[:page]).per(30)
  end
  
  def show
    set_todo
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
    set_todo
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
    set_todo
    @todo.destroy
    
    flash[:success] = 'Todo was deleted.'
    redirect_to todos_url
  end

  private
  
  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:content, :name, :duedate, :status, :remark)
  end

end