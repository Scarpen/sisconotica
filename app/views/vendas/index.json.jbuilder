json.array!(@vendas) do |venda|
  json.extract! venda, :id, :data, :valorTotal
  json.url venda_url(venda, format: :json)
end
