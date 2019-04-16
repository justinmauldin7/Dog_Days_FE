class FavoritesController < ApplicationController
  def index
    @dogs = DogService.get_all_dogs
  end
end
