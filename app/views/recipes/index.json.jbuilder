json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name_recipe, :duration, :photo
  json.url recipe_url(recipe, format: :json)
end
