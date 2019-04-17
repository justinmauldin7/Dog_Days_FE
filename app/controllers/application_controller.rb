class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    binding.pry
    @current_user ||= UserService.find_user(session[:email]) if session[:email]
  end
end
