class Movie < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews, source: :user

  validates :title, :director, presence: true
  validates :poster_image, format: { with: /\.(png|jpg)\Z/i, message: "URL is invalid, please try again" } 

  def movie_club_rating
    self.reviews.average(:rating).round
  end
end
