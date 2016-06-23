json.array!(@previews) do |preview|
  json.extract! preview, :id, :note, :comment, :user_id, :recipe_id
  json.url preview_url(preview, format: :json)
end
