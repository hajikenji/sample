class TasksController < ApplicationController
  # before_action :set_csrf_token_header

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

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end
  

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    redirect_to tasks_path
    # render "index"
    
  end

  def content
    @tasks_all = Task.all
    render json: @tasks_all
  end
  
  
  
  private
  def task_params
    params.require(:task).permit(:title, :content)
  end
  
  
end
