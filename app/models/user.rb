class User < ApplicationRecord
  has_secure_password
  has_one :profile
  has_many :reviews
  has_many :movies, through: :reviews
  has_many :comments 
  has_many :commented_reviews, through: :comments, source: :review

  validates :first_name, presence: true
  validates :last_name, presence: true
end
