class Note < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy

    validates :word, presence: true
    validates :english, presence: true
    validates :japanese, presence: true
end
