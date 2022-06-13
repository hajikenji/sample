class TasksController < ApplicationController

  def index
    @tasks_all = Task.all
    
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    redirect_to tasks_path
    
  end
  
  
  private
  def task_params
    params.permit(:title, :content)
  end
  
  
end
