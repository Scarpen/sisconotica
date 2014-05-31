json.array!(@produtos) do |produto|
  json.extract! produto, :id, :modelo, :precoVenda, :precoCusto, :quant_fisica, :cor, :tamanho, :quanti_estoque, :fornecedor, :marca, :imagem, :unidade, :tipo_produto_id
  json.url produto_url(produto, format: :json)
end
