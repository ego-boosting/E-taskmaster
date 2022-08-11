class Note < ApplicationRecord
  belongs_to :user

    validates :word, presence: true
    validates :english, presence: true
    validates :japanese, presence: true
end
