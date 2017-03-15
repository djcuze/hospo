class FoodGroupsController < ApplicationController
  def index
    @food_group = FoodGroup.all
  end
  def create
    @food_group = FoodGroup.find(params[:id])
  end
end
