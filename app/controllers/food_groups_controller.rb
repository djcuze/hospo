class FoodGroupsController < ApplicationController
  def index
    @food_group = FoodGroup.all
  end

  def new
    @food_group = FoodGroup.new
  end

  def create
    @food_group = FoodGroup.new(food_group_params)

    respond_to do |format|
      if @food_group.save
        format.html { redirect_to @food_group, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @food_group }
      else
        format.html { render :new }
        format.json { render json: @food_group.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @food_group = FoodGroup.find(params[:id])
  end

  private

  def food_group_params
      params.require(:food_group).permit(:name)
  end
end
