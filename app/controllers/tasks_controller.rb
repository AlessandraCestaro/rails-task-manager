class TasksController < ApplicationController

  # READ
  def index
    @tasks = Task.all
  end

  # def show
  #   # it is searching the specific task by the id (task is just a shortcut for :id = task.id)
  #   @task = Task.find(task)
  # end

  # # CREATE
  # def new
  #   @task = Task.new()
  # end

  # def create
  # end

  # # UPDATE
  # def edit
  #   @task = Task.find(task)
  # end

  # def update
  #   @task = Task.find(task)
  # end

  # # DELETE
  # def delete
  #   @task = Task.find(task)
  #   @task.delete
  # end

  # private

  # # set_params

end
