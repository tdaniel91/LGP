json.array!(@contactos) do |contacto|
  json.extract! contacto, :utilizador_id, :utilizador2_id, :estado
  json.url contacto_url(contacto, format: :json)
end
