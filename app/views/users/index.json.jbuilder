json.array!(@users) do |user|
  json.extract! user, :id, :email, :firsname, :lastname
  json.url user_url(user, format: :json)
end
