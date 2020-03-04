class Movie < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews, source: :user

  validates :title, :director, :theater, :showtime, :date_attended, presence: true
  validates :release_year, numericality: true, presence: true
  validates :poster_image, format: { with: /\.(png|jpg)\Z/i, message: "URL is invalid, please try again" } 

  def movie_club_rating
    self.reviews.average(:rating).round
  end

  def self.most_recent_list
    self.all.sort_by(&:date_attended).reverse
  end 
end
