class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :note
  has_one :activity, as: :subject, dependent: :destroy

  after_create_commit :create_activities

  def redirect_path
   #コメントの場合

    # "/#{note.user.name_id}/notes/#{note.id}"
     Rails.application.routes.url_helpers.share_show_note_path(self.note_id)
  end


  def name
    user.name
  end

  private

  def create_activities
    Activity.create!(subject: self, user_id: note.user.id, action_type: Activity.action_types[:favorited_to_note])
  end
end
