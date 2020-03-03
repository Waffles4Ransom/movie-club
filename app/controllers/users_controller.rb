class UsersController < ApplicationController

  def new 
    @user = User.new
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
    end 
  end 

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
