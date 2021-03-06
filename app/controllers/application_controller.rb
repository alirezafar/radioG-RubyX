class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
  	@current_user ||= Artist.find(session[:artist_id]) if session[:artist_id]
  end

  def logged_in?
  	!!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in."
      redirect_to songs_path
    end
  end

end
