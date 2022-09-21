class Public::RelationshipsController < ApplicationController
  before_action :authenticate_user!
    # フォローするとき
  def create
    current_user.follow(params[:user_id])
    @user = User.find(params[:user_id])
    flash[:notice] = "フォローをしました。"

    # @co

    # redirect_to request.referer
  end
  # フォロー外すとき
  def destroy
    current_user.unfollow(params[:user_id])
    @user = User.find(params[:user_id])
    flash[:notice] = "フォローを解除しました"
    # redirect_to request.referer
  end
  # フォロー一覧
  def followings
    @user = User.find(params[:user_id])
    @users = @user.followings

    activities = current_user.activities.where(read: false).order(created_at: :desc)
    activities_array = []
    activities.each do |activity|
      if activity.subject.user.id != current_user.id
        activities_array.push(activity)
      end
    end
    @activities = Kaminari.paginate_array(activities_array).page(params[:page]).per(8)
  end
  # フォロワー一覧
  def followers
    @user = User.find(params[:user_id])
    @users = @user.followers

    activities = current_user.activities.where(read: false).order(created_at: :desc)
    activities_array = []
    activities.each do |activity|
      if activity.subject.user.id != current_user.id
        activities_array.push(activity)
      end
    end
    @activities = Kaminari.paginate_array(activities_array).page(params[:page]).per(8)
  end

end
