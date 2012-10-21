class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_login
    if !logged_in?
        redirect_to root_url, notice: "You must be logged in to do this."
    end
  end
end
