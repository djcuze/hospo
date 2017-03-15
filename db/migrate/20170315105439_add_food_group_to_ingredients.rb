class AddFoodGroupToIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :food_group_ingredients, id: false do |t|
      t.belongs_to :food_group, index: true
      t.belongs_to :ingredient, index: true
    end
  end
end
