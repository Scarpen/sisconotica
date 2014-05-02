class Adicionarcoluna < ActiveRecord::Migration
  def change
  	add_column :produtos, :tipo_produto_id, :integer
  end
end
