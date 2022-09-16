class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

      has_many :notes, dependent: :destroy
      has_many :tasks, dependent: :destroy
      has_many :contacts, dependent: :destroy
      has_many :favorites, dependent: :destroy
      has_many :comments, dependent: :destroy
      has_many :relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
      has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
      has_many :followings, through: :relationships, source: :followed
      has_many :followers, through: :reverse_of_relationships, source: :follower


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
