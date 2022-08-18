class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.where.not(name: "guestuser").page(params[:page]).per(10).order('updated_at DESC')
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @origin_user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @origin_user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_user_path
      flash[:notice] = "更新が完了しました。"
    else
      render "edit"
      flash[:alert] = "更新できませんでした。"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,:name,:is_deleted)
  end
end
