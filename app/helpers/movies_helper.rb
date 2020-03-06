module MoviesHelper

  def too_soon_to_review 
    @movie.date_attended < DateTime.now
  end 

end
