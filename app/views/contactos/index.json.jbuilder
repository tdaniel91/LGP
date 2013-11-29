json.array!(@contactos) do |contacto|
  json.extract! contacto, :utilizador1_id, :utilizador2_id, :estado
  json.url contacto_url(contacto, format: :json)
end
