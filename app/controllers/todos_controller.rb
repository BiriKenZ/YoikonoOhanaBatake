class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo, only: [:index, :create, :update, :destroy]

  def index
    @todo = Todo.new
  end

  def update
  end

  def create
    todo = Todo.new(todo_params)
    todo.user_id = current_user.id
    todo.flower_id = rand(Flower.count) + 1
    todo.save
    # redirect_to '/todos'
  end

  def destroy
    Todo.find(params[:id]).destroy
  end

  private
  # ストロングパラメータ
  def todo_params
    params.require(:todo).permit(:title, :comment, :is_completed)
  end

  def set_todo
    @todos = Todo.all
  end

end
