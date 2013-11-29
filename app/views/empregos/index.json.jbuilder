json.array!(@empregos) do |emprego|
  json.extract! emprego, :utilizador_id, :empresa_id, :cargo, :data_entrada, :data_saida
  json.url emprego_url(emprego, format: :json)
end
