class RestaurantsController < ApplicationController
   skip_before_action :authenticate_user!, only: [:index, :show]
   def index
    @restaurant = Restaurant.new
     end
   def show
     @restaurant = Restaurant.find(params[:id])
   end
  end

 private

  def restaurant_params
    params.require(:restaurant).permit(:name, :adress, :description)
  end
