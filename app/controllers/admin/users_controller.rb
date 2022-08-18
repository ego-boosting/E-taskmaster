class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.where.not(name: "guestuser").page(params[:page]).per(10).order('updated_at DESC')
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit 
  end
  
  def update
  end

end
