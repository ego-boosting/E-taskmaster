class Contact < ApplicationRecord
  belongs_to :user

  # Public
  validates :title, length: { minimum: 2, maximum: 20 }
  validates :content, length: { minimum: 2, maximum: 400 }

  # Admin
  validates :reply, length: { minimum: 2, maximum: 400 }, if: -> { reply? }

end
