class Public::TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_task, only: [:edit, :update, :destroy]

  def new
    @task = Task.new
    # タスク未完了(新規タスク)一覧
    @tasks = Task.where(user_id: current_user.id).where(complete: false).page(params[:page]).per(3).order('created_at DESC')

    # タスク折れ線グラフ
    @line_chart_data = [] # 空のチャート用のインスタンス変数を用意
    base_days = [*Date.current - 1.week .. Date.current]  # 日付データの配列を生成
    base_days.each do |base_day|
      # 1日の投稿数を取得
      day_count = Task.where(user_id: current_user.id).where(created_at: base_day.beginning_of_day...base_day.end_of_day).count
      # 取得した投稿数を配列としてチャート用のインスタンス変数に日付とともに代入
      @line_chart_data << [base_day.strftime('%Y/%m/%d').to_s, day_count]
    end
  end

  def complete
    # タスク完了一覧
    @tasks = Task.where(user_id: current_user.id).where(complete: true).page(params[:page]).per(9).order('created_at DESC')
  end

  def index
      @tasks = Task.where(user_id: current_user.id)
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save
      redirect_to new_task_path
      flash[:notice] = "タスクの投稿が完了しました"
    else
      # タスク未完了(新規タスク)一覧
      @tasks = Task.where(user_id: current_user.id).where(complete: false).page(params[:page]).per(3)

      # タスク折れ線グラフ
      @line_chart_data = [] # 空のチャート用のインスタンス変数を用意
      base_days = [*Date.current - 1.week .. Date.current]  # 日付データの配列を生成
      base_days.each do |base_day|
        # 1日の投稿数を取得
        day_count = Task.where(user_id: current_user.id).where(created_at: base_day.beginning_of_day...base_day.end_of_day).count
        # 取得した投稿数を配列としてチャート用のインスタンス変数に日付とともに代入
        @line_chart_data << [base_day.strftime('%Y/%m/%d').to_s, day_count]
      end

      flash.now[:alert] = "タスクが投稿できません"
      render "new"
    end
  end

  def show
    @task = Task.find(params[:id])

    # タスク折れ線グラフ
    @line_chart_data = [] # 空のチャート用のインスタンス変数を用意
    base_days = [*Date.current - 1.week .. Date.current]  # 日付データの配列を生成
    base_days.each do |base_day|
      # 1日の投稿数を取得
      day_count = Task.where(user_id: current_user.id).where(created_at: base_day.beginning_of_day..base_day.end_of_day).count
      # 取得した投稿数を配列としてチャート用のインスタンス変数に日付とともに代入
      @line_chart_data << [base_day.strftime('%Y/%m/%d').to_s, day_count]
    end
  end

  def edit
    # @task = Task.find(params[:id])
    # # unless current_user.id == @task.user.id
    # # redirect_to new_task_path
    # # end
    # if current_user.id == @task.user.id
    # else
    #   redirect_to new_task_path
    # end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path
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

  def ensure_task
    @task = Task.find(params[:id])
     unless current_user.id == @task.user.id
      redirect_to new_task_path
     end
  end

end