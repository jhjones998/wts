json.extract! user, :id, :name, :admin, :pw, :created_at, :updated_at
json.url user_url(user, format: :json)