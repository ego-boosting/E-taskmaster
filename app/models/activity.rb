class Activity < ApplicationRecord
  belongs_to :subject, polymorphic: true

    enum action_type: {
    favorited_to_note:        0,
    followed_you:             1,
    commented_on_the_note:    2
  }

   enum read: { unread: false, read: true }

end
