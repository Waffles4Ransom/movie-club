class ReviewsController < ApplicationController
  before_action :authenticate
  before_action :set_movie

  def new
    @review = @movie.reviews.build
  end 

  def create 
    @review = @movie.reviews.build(review_params)
    if @review.save 
      redirect_to movie_url(@movie)
    else
      render :new
    end 
  end 

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end 

  def review_params
    params.require(:review).permit(:content, :rating, :user_id)
  end 
end
