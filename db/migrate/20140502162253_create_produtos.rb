class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.float :precoVenda
      t.string :nome
      t.integer :quantidade

      t.timestamps
    end
  end
end
