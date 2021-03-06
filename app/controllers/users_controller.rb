class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate, only: [:index, :show]
  
  def index
    @users = User.alpha_order
  end 

  def new 
    if logged_in?
      redirect_to user_path(current_user)
    else
      @user = User.new
    end 
  end 

  def create 
    @user = User.new(user_params)
    if @user.save 
      log_in(@user)
      redirect_to new_user_profile_path(@user.id)
    else
      render :new
    end
  end 

  def show 
    if current_user.profile.nil?
      redirect_to new_user_profile_path(current_user.id)
    else 
      @user = User.find(params[:id])
      @movies = Movie.chrono_order
    end 
  end 

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
