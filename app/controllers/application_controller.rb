class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?, :valid?, :current_user
  
  def logged_in?
    if session[:user_id] != nil 
        true 
    else 
        redirect_to '/' 
    end
  end

  def valid? 
    if params[:name] != nil && params[:password] != nil && params[:nausea] && params[:happiness] != nil && params[:tickets] != nil && params[:height] != nil 
      true 
    else 
      false 
    end
  end

  def current_user 
    user = User.find(session[:user_id])
    if user 
      user 
    else 
      nil 
    end
  end
end
