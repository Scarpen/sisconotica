json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :endereco, :foneResidencial, :FoneCelular, :Cpf, :FotoCliente, :email, :DataNascimento, :bairro, :cidade, :cep, :estado
  json.url cliente_url(cliente, format: :json)
end
