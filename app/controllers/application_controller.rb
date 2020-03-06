class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user


  private 

  def logged_in?
    !!current_user
  end 

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end 

  def log_in(user)
    session[:user_id] = user.id
  end 

  def authenticate 
    redirect_to login_path if !logged_in?
  end 

  def authorized
    unless current_user.id == params[:user_id].to_i
      flash[:nope] = "Sneaky little member. Wicked, tricksy, false."
      redirect_to root_url
    end 
  end 

  def authorize(object)
    unless current_user.id == object.user.id 
      flash[:nope] = "Sneaky little member. Wicked, tricksy, false."
      redirect_to root_url
    end 
  end

  def admin
    unless current_user.admin?
      flash[:nope] = "You're killing me smalls. You're not authorized to do that."
      redirect_to movies_url
    end
  end

end
