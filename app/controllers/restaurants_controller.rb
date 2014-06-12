class RestaurantsController < ApplicationController

  def index
    @restaurant = Restaurant.new
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :index
    end
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:restaurant_name, :food_type)
  end

end