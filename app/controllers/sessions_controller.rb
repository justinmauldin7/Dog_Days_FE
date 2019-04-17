class SessionsController < ApplicationController
  def new
    if @current_user
      redirect_to root_path
    else
      render :new
    end
  end
end
