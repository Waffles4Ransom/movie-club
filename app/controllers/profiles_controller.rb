class ProfilesController < ApplicationController
  before_action :authenticate
  before_action :set_user

  def new 
    @profile = @user.build_profile
  end 

  def create 
    @profile = @user.build_profile(profile_params)
    if @profile.save 
      redirect_to user_url(@user)
    else
      render :new
    end 
  end 

  def edit 
    @profile = @user.profile
  end 

  def update
    @profile = @user.profile
    @profile.update(profile_params)
    if @profile.save 
      redirect_to user_path(@user)
    else
      flash[:fail] = "Update failed"
      render :edit
    end 
  end 

  private 

  def set_user 
    unless @user = User.find_by_id(params[:user_id])
      redirect_to users_path 
    end 
  end 

  def profile_params
    params.require(:profile).permit(:username, :member_title, :fav_movie, :profile_photo)
  end 

end
