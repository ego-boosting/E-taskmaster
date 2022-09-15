class Note < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy

    validates :word, presence: true
    validates :english, presence: true
    validates :japanese, presence: true

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
