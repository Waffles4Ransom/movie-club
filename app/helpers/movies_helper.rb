module MoviesHelper

  def future_movie_date 
    @movie.date_attended > DateTime.now
  end 

end
