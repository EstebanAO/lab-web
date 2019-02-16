json.extract! vinculacion, :id, :nombre, :descripcion, :participantes, :fecha_inicio, :fecha_fin, :tipo, :url, :created_at, :updated_at
json.url vinculacion_url(vinculacion, format: :json)
