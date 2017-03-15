class Ingredient < ApplicationRecord
  has_and_belongs_to_many :recipes, join_table: :recipes_ingredients
  belongs_to :food_group

  validates :name, presence: true,
      length: { minimum: 3 }, uniqueness: true, :case_sensitive => false

end
