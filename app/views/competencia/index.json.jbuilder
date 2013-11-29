json.array!(@competencia) do |competencium|
  json.extract! competencium, :utilizador_id, :nome
  json.url competencium_url(competencium, format: :json)
end
