class AssocioacaoProdutoVenda < ActiveRecord::Migration
  def change
    create_table :produtos_vendas, id: false do |t|
      t.integer :venda_id
      t.integer :produtos_id
    end
  end
end
