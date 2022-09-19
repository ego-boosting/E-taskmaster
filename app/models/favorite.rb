class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :note
  has_one :activity, as: :subject, dependent: :destroy

  after_create_commit :create_activities

  private

  def create_activities
    Activity.create!(subject: self, user_id: note.user.id, action_type: Activity.action_types[:favorited_the_note])
  end
end
