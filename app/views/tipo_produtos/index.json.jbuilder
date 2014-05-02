json.array!(@tipo_produtos) do |tipo_produto|
  json.extract! tipo_produto, :id, :tipo
  json.url tipo_produto_url(tipo_produto, format: :json)
end
