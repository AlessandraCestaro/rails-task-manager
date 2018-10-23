class TasksController < ApplicationController
before_action :set_task, only: [:show, :edit, :update, :destroy]
  # READ
  def index
    @tasks = Task.all
  end

  def show
    # it is searching the specific task by the id (task is just a shortcut for :id = task.id)
  end

  # CREATE
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path
  end

  # UPDATE
  def edit

  end

  def update

  end

  # DELETE
  def destroy
    @task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end


  def set_task
    @task = Task.find(params[:id])
  end

end
