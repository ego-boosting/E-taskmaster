class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :note
  has_one :activity, as: :subject, dependent: :destroy

  validates :comment, presence: true

  after_create_commit :create_activities

  def redirect_path
   #コメントの場合
    # "/#{note.user.name_id}/notes/#{note.id}"
    Rails.application.routes.url_helpers.share_index_user_path(self.user.id)
  end

  def name
    user.name
  end

  private

  def create_activities
    Activity.create!(subject: self, user_id: note.user.id, action_type: Activity.action_types[:commented_on_the_note])
  end
end
