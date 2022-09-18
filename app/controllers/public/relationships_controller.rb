class Public::RelationshipsController < ApplicationController
  before_action :authenticate_user!
    # フォローするとき
  def create
    current_user.follow(params[:user_id])
    @user = User.find(params[:user_id])
    flash[:notice] = "する"

    # @co

    # redirect_to request.referer
  end
  # フォロー外すとき
  def destroy
    current_user.unfollow(params[:user_id])
    @user = User.find(params[:user_id])
    flash[:notice] = "外す"
    # redirect_to request.referer
  end
  # フォロー一覧
  def followings
    @user = User.find(params[:user_id])
    @users = @user.followings
  end
  # フォロワー一覧
  def followers
    @user = User.find(params[:user_id])
    @users = @user.followers
  end

end
