class TodosController < ApplicationController

  def index
    @todo = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @list = List.find(params[:list_id])
    @todo.list = @list
    if @todo.save
      redirect_to list_path(@list)
    else
      @todos = @list.todos
      @reading_todos = @todos.where(category: "reading")
      @education_todos = @todos.where(category: "education")
      @online_content_todos = @todos.where(category: "online content")
      render "lists/show"
    end
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
    params.require(:todo).permit(:title, :description, :category)
  end
end
