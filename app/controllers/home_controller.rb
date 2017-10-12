class HomeController < ApplicationController
  def index
    @cats = Cat.all
    @todos = Todo.all
    @users = User.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to '/'
  end

  private
    def todo_params
      params.require(:todo).permit(:tasks, :finished)
    end
end
