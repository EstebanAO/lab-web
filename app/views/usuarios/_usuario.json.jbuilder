json.extract! usuario, :id, :password, :rol, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
