class SessionsController < ApplicationController
  def new
    binding.pry
    if current_user
      redirect_to root_path
    else
      render :new
    end
  end

  def create
    binding.pry
    user = UserService.find_user(params[:email])
    if user && user.authenticate(params[:password])
      session[:email] = user[:email]
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
