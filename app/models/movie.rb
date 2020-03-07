class Movie < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews, source: :user

  validates :title, :director, :theater, :showtime, :date_attended, presence: true
  validates :release_year, numericality: true, presence: true
  validates :poster_image, format: { with: /\.(png|jpg)\Z/i, message: "URL is invalid, please try again" } 
  
  scope :most_recent_first, ->{order(date_attended: :desc)}
  scope :chrono_order, ->{order(:date_attended)}

  def movie_club_rating
    self.reviews.average(:rating).round
  end

  def self.upcoming_movie 
      Movie.where("date_attended > ?", DateTime.now).first
  end

end
