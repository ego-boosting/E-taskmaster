class Admin::UsersController < ApplicationController

  def index
    @users = User.where.not(name: "guestuser").page(params[:page]).per(10).order('updated_at DESC')
  end

  def show
    @user = User.find(params[:id])
  end

  def edit

  end

end
