class Public::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_guest_user, only: [:edit]

  def show
    @user = current_user

    @line_chart_data = [] # 空のチャート用のインスタンス変数を用意
    base_days = [*Date.current - 1.week .. Date.current]  # 日付データの配列を生成
    base_days.each do |base_day|
      # 1日の投稿数を取得
      day_count = Note.where(user_id: current_user.id).where(created_at: base_day.beginning_of_day...base_day.end_of_day).count
      # 取得した投稿数を配列としてチャート用のインスタンス変数に日付とともに代入
      @line_chart_data << [base_day.strftime('%Y/%m/%d').to_s, day_count]
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
      flash[:notice] = "更新が完了しました。"
    else
      render "edit"
      flash.now[:alert] = "更新ができませんでした。"
    end
  end

  def unsubscribe
    @user = current_user
  end

  def withdrawal
    @user = current_user
    @user.update(is_deleted: true)
    reset_session
    flash[:notice] = "ご利用ありがとうございました。"
    redirect_to root_path
  end

  #favorites一覧
  def favorites
    @user = User.find(params[:id])
    favorites = Favorite.where(user_id: @user.id).pluck(:note_id)
    note_favorites = Note.find(favorites)
    @favorite_notes = Kaminari.paginate_array(note_favorites).page(params[:page]).per(5)
  end

  def share_index
    @user = User.find(params[:id])
    @notes = Note.all.page(params[:page]).per(10).order('created_at DESC')
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :profile_image)
  end

  def ensure_guest_user
    @user = User.find(params[:id])
    redirect_to users_path(current_user), notice: 'ゲストユーザーはプロフィール編集画面へ遷移できません。' if @user.name == "guestuser"
  end

end
