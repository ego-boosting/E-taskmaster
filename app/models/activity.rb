class Activity < ApplicationRecord
  belongs_to :subject, polymorphic: true
end
