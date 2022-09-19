class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :note
  has_one :activity, as: :subject, dependent: :destroy

  validates :comment, presence: true

  after_create_commit :create_activities

  private

  def create_activities
    Activity.create!(subject: self, user_id: note.user.id, action_type: Activity.action_types[:commented_on_the_note])
  end
end
