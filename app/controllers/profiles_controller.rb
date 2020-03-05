class ProfilesController < ApplicationController
  before_action :authenticate
  before_action :set_user

  def new 
    if @user.profile.blank?
      @profile = @user.build_profile
    else
      flash[:nope] = "Two profiles? AS IF!"
      redirect_to user_path(@user)
    end
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
      render :edit
    end 
  end 

  private 

  def set_user 
     @user = User.find(params[:user_id])
  end 

  def profile_params
    params.require(:profile).permit(:username, :member_title, :fav_movie, :profile_photo)
  end 

end
