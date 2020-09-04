class MoviesController < ApplicationController
  before_action :authenticate
  before_action :admin, only: [:new, :edit]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    if params[:title]
      @movies = Movie.where("title LIKE ?", params[:title])
      flash[:nope] = "Sorry, no movie found." if @movies.blank?
    else
      @movies = Movie.most_recent_first
    end
  end 

  def new
    @movie = Movie.new
  end 

  def create 
    @movie = Movie.new(movie_params)
    if @movie.save 
      redirect_to movies_url
    else
      render :new
    end 
  end 

  def show
  end 

  def edit 
  end 

  def update
    @movie.update(movie_params)
    if @movie.save
      redirect_to movie_path(@movie)
    else 
      render :edit
    end 
  end 

  def destroy 
    @movie.destroy
    redirect_to movies_path
  end 

  private 

  def set_movie
    @movie = Movie.find(params[:id])
  end 

  def movie_params
    params.require(:movie).permit(:title, :director, :release_year, :genre, :date_attended, :showtime, :theater, :poster_image, :ticketURL)
  end 

end
