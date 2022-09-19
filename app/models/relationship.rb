class Relationship < ApplicationRecord

  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  has_one :activity, as: :subject, dependent: :destroy

  after_create_commit :create_activities

  private

  def create_activities
    Activity.create!(subject: self, user_id: , action_type: Activity.action_types[:followed_you])
  end

end
