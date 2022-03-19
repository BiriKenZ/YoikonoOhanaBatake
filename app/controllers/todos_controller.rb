class TodosController < ApplicationController
  before_action :authenticate_user!
  def index
    @todo = Todo.new
    @todos = Todo.all
  end

  def update
  end

  def create
        todo = Todo.new(todo_params)
        todo.user_id = 1
        todo.flower_id = 1
        puts todo, 1234567
        todo.save
        redirect_to '/todos'
  end

  private
  # ストロングパラメータ
  def todo_params
    params.require(:todo).permit(:title, :comment, :is_completed)
  end

end
