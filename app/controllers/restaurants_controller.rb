class RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
    end
    # other actions...
  end