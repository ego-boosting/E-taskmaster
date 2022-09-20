class Relationship < ApplicationRecord

  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  has_one :activity, as: :subject, dependent: :destroy

  after_create_commit :create_activities

  # userカラムは無いので、userで取得に来るコードは、Userモデルからデータをfindして返す。
  # そうすることで、get_profile_imageも一緒に使えるようになる。
  def user
    User.find(followed_id)
  end


  def redirect_path
   #コメントの場合
    # "/#{note.user.name_id}/notes/#{note.id}"
     Rails.application.routes.url_helpers.share_index_user_path(self.followed.id)
  end


  def name
    follower.name
  end

  private

  def create_activities
    Activity.create!(subject: self, user_id: followed.id, action_type: Activity.action_types[:followed_you])
  end

end
