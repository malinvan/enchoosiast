class TodosController < ApplicationController

  def index
    @todo = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todo_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :description)
  end
end
