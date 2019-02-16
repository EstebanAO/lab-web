json.extract! profesor, :id, :nombre, :apellido_paterno, :apellido_materno, :correo, :oficina, :cv, :tipo, :created_at, :updated_at
json.url profesor_url(profesor, format: :json)
