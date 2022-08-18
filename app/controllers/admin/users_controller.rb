class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!
  before_action :before_customer, only:[:show,:edit,:update]

  def index
    @users = User.where.not(name: "guestuser").page(params[:page]).per(10).order('updated_at DESC')
  end

  def show
  end

  def edit
  end

  def update
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

   def before_customer
     @user = User.find(params[:id])
  end

end
