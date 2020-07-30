class BurgersController < ApplicationController
  def index
    @burger = Burger.new
  end
def show
   @burger = Burger.find(params[:id])
  end
def new
  @burger = Burger.new
  end
def create
  @burger = Burger.new(burger_params)
  end
end

