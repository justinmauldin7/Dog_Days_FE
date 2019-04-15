class WelcomeController < ApplicationController
  def index
    @dogs = DogFacade.get_all_dogs
  end
end
