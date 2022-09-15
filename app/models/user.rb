class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :notes, dependent: :destroy
         has_many :tasks, dependent: :destroy
         has_many :contacts, dependent: :destroy
         has_many :favorites, dependent: :destroy

         validates :name, length: { minimum: 2, maximum: 20 }
         validates :email, presence: true

         has_one_attached :profile_image

  def get_profile_image
    profile_image.attached? ? profile_image : 'fruits.png'
  end



  def self.guest
    find_or_create_by!(name: "guestuser", email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "guestuser"
    end
  end

end
