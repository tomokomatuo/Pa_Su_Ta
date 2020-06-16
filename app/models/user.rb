class User < ApplicationRecord
  before_validation { email.downcase! }
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :address, presence: true
  validates :phone_number, presence: true, uniqueness: true
  validates :birthday, presence: true
  validates :gender, presence: true
  validates :address, presence: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  enum gender: { man: 0, woman: 1}
  mount_uploader :icon, ImageUploader
end
