json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :endereco, :foneResidencial, :foneCelular, :cpf
  json.url cliente_url(cliente, format: :json)
end
