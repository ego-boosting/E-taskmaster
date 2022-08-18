class Contact < ApplicationRecord
  belongs_to :user

  validates :title, length: { minimum: 2, maximum: 20 }
  validates :content, length: { minimum: 2, maximum: 400 }

end
