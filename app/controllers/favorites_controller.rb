class FavoritesController < ApplicationController
  def index
    @dogs = DogService.get_all_dogs
  end

  def create
    @dog = DogService.create_dog(params[:breed], params[:image])
    if @dog
      redirect_to favorites_path
    end
  end
end
