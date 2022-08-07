class Admin::UsersController < ApplicationController

  def index
    @users = User.where.not(name: "guestuser")
  end

  def show
    @user = User.find(params[:id])
  end

  def edit

  end

end
