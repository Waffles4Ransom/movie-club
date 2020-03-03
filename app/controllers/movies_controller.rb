class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end 

  def new
    @movie = Movie.new
  end 

  def create 
    @movie = Movie.new(movie_params)
    if @movie.save 
      redirect_to movies_url
    else
      flash[:fail] = "Submission failed, cannot leave fields blank"
      render :new
    end 
  end 

  private 

  def movie_params
    params.require(:movie).permit(:title, :director, :release_year, :genre, :date_attended, :showtime, :theater, :poster_image)
  end 

end
