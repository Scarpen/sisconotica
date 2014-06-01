class CreateVendasProdutos < ActiveRecord::Migration
  def change
    create_table :vendas_produtos do |t|
      t.integer :produto_id
      t.integer :venda_id
      t.integer :quantidade
      t.float :valorUnit

      t.timestamps
    end
  end
end
