json.array!(@noticia) do |noticium|
  json.extract! noticium, :utilizador_id, :img, :texto, :titulo
  json.url noticium_url(noticium, format: :json)
end
