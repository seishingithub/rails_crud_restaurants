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

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update_attributes!(restaurant_params)

    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:restaurant_name, :food_type)
  end

end