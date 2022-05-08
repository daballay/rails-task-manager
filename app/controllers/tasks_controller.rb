class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @tasks = Task.new
  end

  def create
    # @tasks = Task.new(params[:restaurants]) Esto rails lo prohibe ya que es un forulario de envio y alguien puede enviar otras cosas
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @tasks.update(task_params)
    redirect_to task_path
  end

  def destroy
    @tasks.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @tasks = Task.find(params[:id])
  end

end
  