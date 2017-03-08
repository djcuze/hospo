json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :food_group
  json.url ingredient_url(ingredient, format: :json)
end
