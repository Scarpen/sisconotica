class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :modelo
      t.float :precoVenda
      t.float :precoCusto
      t.string :quant_fisica
      t.string :cor
      t.string :tamanho
      t.string :quanti_estoque
      t.string :fornecedor
      t.string :marca
      t.string :imagem
      t.string :unidade
      t.string :tipo_produto_id

      t.timestamps
    end
  end
end
