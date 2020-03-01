class SessionsController < ApplicationController

  def new
  end

  def create 
    @user = User.find_by(:email params[:email])
    if @user && @user.authenticate
      log_in(@user)
      redirect_to user_path(@user)
    else 
      redirect_to login_path
    end 
  end 


end