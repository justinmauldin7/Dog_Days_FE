class FavoritesController < ApplicationController
  def index
    @user = 1
    @dogs = DogService.get_all_dogs(@user)
  end

  def create
    @user = 1
    @dog = DogService.create_dog(@user, params[:breed], params[:image])
    if @dog
      redirect_to favorites_path
    end
  end

  def destroy
    @user = 1
    @dog = DogService.delete_dog(@user, params[:id])
    redirect_to favorites_path
  end
end
