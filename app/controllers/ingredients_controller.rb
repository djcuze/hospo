class IngredientsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.find_or_create_by(ingredient_params)
    @recipe.ingredients << @ingredient
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  def show
    # @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.find(params[:id])
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
