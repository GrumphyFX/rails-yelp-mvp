class RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
    end

    def show
      @restaurant = Restaurant.find(params[:id])
      @review = Review.new
    end


    def new
      @restaurant = Restaurant.new
    end

    
    def create
      @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        redirect_to restaurant_path(@restaurant), notice: 'Restaurant was successfully created.'
      else
        render :new, alert: 'Restaurant was not created.'
      end
    end

    private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
    
  end