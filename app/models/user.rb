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
  
  enum gender: { 男性: 0, 女性: 1}
  
  mount_uploader :image, ImageUploader
  
  acts_as_paranoid
  
  has_many :active_relationships, foreign_key: 'follower_id', class_name: 'Relationship', dependent: :destroy
  has_many :passive_relationships, foreign_key: 'followed_id', class_name: 'Relationship', dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  
  def unfollow!(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  def follow!(other_user)
    active_relationships.create!(followed_id: other_user.id)
  end

  def following?(other_user)
    active_relationships.find_by(followed_id: other_user.id)
  end
end
