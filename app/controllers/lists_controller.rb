class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
    @todos = @list.todos
    @todo = Todo.new
    @reading_todos = @todos.where(category: "reading")
    @education_todos = @todos.where(category: "education")
    @online_content_todos = @todos.where(category: "online content")
  end

  def create
    @career = Career.find(params[:career_id])
    @list = List.create(user: current_user, career: @career)
    redirect_to list_path(@list)
  end
end
