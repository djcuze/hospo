class IngredientsController < ApplicationController

  def index
    @ingredient = Ingredient.all
  end

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

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    respond_to do |format|
      format.html { redirect_to ingredients_url, notice: 'Ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
