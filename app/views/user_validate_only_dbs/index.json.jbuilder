json.array!(@user_validate_only_dbs) do |user_validate_only_db|
  json.extract! user_validate_only_db, :id, :name, :password
  json.url user_validate_only_db_url(user_validate_only_db, format: :json)
end
