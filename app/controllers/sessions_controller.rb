class SessionsController < ApplicationController

  def home 
    if logged_in?
      redirect_to movies_path
    end 
  end 

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

  def omniauth
    @user = User.find_or_create_by(email: auth["info"]["email"]) do |user|
      user.first_name = auth["info"]["name"].split(' ').first
      user.last_name = auth["info"]["name"].split(' ').last
      user.password = SecureRandom.hex(12)
    end 
    binding.pry
    if @user.save
      log_in(@user)
      if @user.profile.present? 
        redirect_to user_path(@user) 
      else 
        redirect_to new_user_profile_path(@user.id) 
      end 
    else 
      redirect_to '/'
    end 
  end 


  private

  def auth
    request.env['omniauth.auth']
  end 

end
