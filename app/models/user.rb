class User < ApplicationRecord
  has_secure_password
  has_one :profile, dependent: :destroy
  has_many :reviews
  has_many :movies, through: :reviews
  has_many :comments 
  has_many :commented_reviews, through: :comments, source: :review

  validates :first_name, :last_name, presence: true
  validates :password, length: { minimum: 6 }
  validates :email, uniqueness: true

  def full_name 
    "#{self.first_name} #{self.last_name}"
  end 

  def reviewed_it(movie)
    self.movies.ids.include?(movie.id)
  end 

  def member_status
    self.status ? "active" : "inactive"
  end 
  
end
