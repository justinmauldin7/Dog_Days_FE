class WelcomeController < ApplicationController
  def index
    @dog = DogFacade.get_all_dogs
  end
end
