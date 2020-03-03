class Profile < ApplicationRecord
  belongs_to :user
  validates :username, uniqueness: true
  validates :profile_photo, format: { with: /\.(png|jpg)\Z/i, message: "URL is invalid, please try again or leave blank" }
end
