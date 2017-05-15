class AddFoodWarningsToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :contains_gluten, :boolean
    add_column :recipes, :contains_dairy, :boolean
    add_column :recipes, :is_vegetarian, :boolean
  end
end
