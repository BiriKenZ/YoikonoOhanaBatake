class TodosController < ApplicationController
  before_action :authenticate_user!
  def index
    @todo = Todo.new
    @todos = Todo.all
  end

  def update
  end

  def create
    @todos = Todo.all
    todo = Todo.new(todo_params)
    todo.user_id = current_user.id
    todo.flower_id = rand(Flower.count)
    todo.save
    # redirect_to '/todos'
  end

  private
  # ストロングパラメータ
  def todo_params
    params.require(:todo).permit(:title, :comment, :is_completed)
  end

end
