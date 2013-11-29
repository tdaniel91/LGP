json.array!(@empresas) do |empresa|
  json.extract! empresa, :nome, :historia, :data_criacao, :email, :telefone, :morada, :areas, :projectos, :admin_id
  json.url empresa_url(empresa, format: :json)
end
