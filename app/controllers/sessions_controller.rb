class SessionsController < ApplicationController

  def new
    redirect_to movies_url if logged_in?
  end

  def create 
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      log_in(@user)
      redirect_to user_path(@user)
    else 
      flash[:message] = "Invalid attempt, please try again."
      redirect_to login_path
    end 
  end 

  def destroy
    session.clear
    redirect_to login_path
  end 


end
