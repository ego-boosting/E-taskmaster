class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :note
  has_one :activity, as: :subject, dependent: :destroy
end
