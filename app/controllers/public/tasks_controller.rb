class Public::TasksController < ApplicationController

  def new
    @task = Task.new
    @tasks = Task.where(complete: false).page(params[:page])
  end

  def complete
    @tasks = Task.where(complete: true).page(params[:page])
  end

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save
      redirect_to new_task_path
      flash[:notice] = "タスクの投稿が完了しました"
    else
      render "new"
      flash[:alret] = "タスクが投稿できません"
    end
  end

  def show
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to new_task_path
      flash[:notice] = "タスクの更新が完了しました。"
    else
      render "edit"
      flash[:alret] = "タスクの更新ができませんでした。"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.update(complete: true)
    redirect_to tasks_path
    flash[:notice] = "タスク完了"
  end

  private

  def task_params
    params.require(:task).permit(:title, :starts_at, :ends_at)
  end
end