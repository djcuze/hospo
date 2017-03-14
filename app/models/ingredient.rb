class Ingredient < ApplicationRecord
  has_and_belongs_to_many :dishes

  validates :name, presence: true,
      length: { minimum: 3 }

end
