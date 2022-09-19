class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :note
  has_one :activity, as: :subject, dependent: :destroy

  validates :comment, presence: true

  after_create_commit :create_activities

  private

  def create_activities
    Activity.create!(subject: self, user_id: ユーザーのID, action_type: Activity.action_types[:enumで設定した内容])
  end
end
