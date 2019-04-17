class WelcomeController < ApplicationController
  def index
    if params[:search]
      @breed = params[:search]
      @dog_images = SearchService.dog_search(@breed)
    end
  end
end
