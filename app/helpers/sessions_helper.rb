module SessionsHelper

  def homepage
    if logged_in?
      render 'sessions/logged_in_home'
    else
      render 'sessions/logged_out_home'
    end 
  end 

end
