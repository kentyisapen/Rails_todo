class TasksController < ApplicationController
  def index
    @tasks = Task.paginate(page: params[:page]).reverse_order
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
  
  private 
    def task_params
      params.require(:task).permit(:title, :content)
    end
  
end
