class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many :comments
  has_many :commenters, through: :comments, source: :user

  validates :rating, :content, presence: true 
end
