class ReviewsController < ApplicationController
  before_action :authenticate
  before_action :set_movie
  before_action :set_review, only: [:edit, :update, :destroy]

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

  def edit 
  end 

  def update
    @review.update(review_params)
    if @review.save 
      redirect_to movie_path(@movie)
    else 
      render :edit
    end
  end 

  def destroy
    @review.destroy
    redirect_to movie_path(@movie)
  end 

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end 

  def set_review
    @review = Review.find(params[:id])
  end 

  def review_params
    params.require(:review).permit(:content, :rating, :user_id)
  end 
end
