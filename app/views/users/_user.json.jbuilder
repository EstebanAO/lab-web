json.extract! user, :id, :password, :email, :admin, :password_confirmation, :created_at, :updated_at
json.url user_url(user, format: :json)
