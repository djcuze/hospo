class FixIngredientsAndCreateJoin < ActiveRecord::Migration[5.0]
  def change
    remove_index :ingredients, :recipe_id
    remove_column :ingredients, :recipe_id

    create_table :recipes_ingredients, id: false do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :ingredient, index: true
    end
  end
end
