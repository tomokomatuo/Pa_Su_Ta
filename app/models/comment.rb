class Comment < ApplicationRecord
  belongs_to :user
  validates :review, presence: true
end
