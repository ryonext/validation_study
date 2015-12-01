json.array!(@user_validate_only_rails) do |user_validate_only_rail|
  json.extract! user_validate_only_rail, :id, :name, :password
  json.url user_validate_only_rail_url(user_validate_only_rail, format: :json)
end
