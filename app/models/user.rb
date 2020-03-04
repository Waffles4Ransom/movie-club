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

  scope :alpha_order, ->{order(:first_name)}

  def full_name 
    "#{self.first_name} #{self.last_name}"
  end 

  def reviewed_it(movie)
    self.movies.ids.include?(movie.id)
  end 

  def member_status
    self.movies.chrono_order.last.date_attended < Movie.chrono_order.third_to_last.date_attended ? "INACTIVE" : "ACTIVE"
  end 

  def member_since
    self.movies.sort_by(&:date_attended).first.date_attended.strftime("%Y")
  end 
  
end
