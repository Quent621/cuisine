json.array!(@steps) do |step|
  json.extract! step, :id, :name, :content, :recipe_id
  json.url step_url(step, format: :json)
end
