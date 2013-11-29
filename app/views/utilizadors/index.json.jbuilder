json.array!(@utilizadors) do |utilizador|
  json.extract! utilizador, :nome, :data_nascimento, :localidade, :email, :telefone
  json.url utilizador_url(utilizador, format: :json)
end
