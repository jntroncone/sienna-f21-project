class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # below is code for setting light and dark theme w/ a cookie (cookies:theme)
  before_action :set_theme

  def set_theme
    if params[:theme].present?
      #coverts string to symbol 
      theme = params[:theme].to_sym
      # session[:theme] = theme
      cookies[:theme] = theme
      redirect_to(request.referrer || root_path)
    end
  end

end
