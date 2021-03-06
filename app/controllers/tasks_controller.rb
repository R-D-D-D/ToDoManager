class TasksController < ApplicationController


  def index
    if params[:tag]
      @tasks = current_user.tasks.tagged_with(params[:tag])
      else
    @tasks = current_user.tasks.search(params[:search])
    end
  end

  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = current_user.tasks.build
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end

  def update
  @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to @task
    else
      render 'edit'
    end
  end


  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:deadline, :task, :tag_list)
  end
end
