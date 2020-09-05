class AdminController < ApplicationController 
  before_action :authenticate
  before_action :admin

  def home 
    @movies = Movie.all
    @admin = current_user
  end 

end 