json.array!(@cursos) do |curso|
  json.extract! curso, :utilizador_id, :nome, :univ, :ano
  json.url curso_url(curso, format: :json)
end
