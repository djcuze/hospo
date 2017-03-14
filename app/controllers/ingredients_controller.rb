class IngredientsController < ApplicationController
  def create
    @dish = Dish.find(params[:dish_id])
    @ingredient = @dish.ingredients.create(ingredient_params)
    redirect_to dish_path(@dish)
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
