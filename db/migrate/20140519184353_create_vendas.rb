class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.date :data
      t.float :valorTotal
      t.integer :cliente_id
      t.integer :funcionario_id

      t.timestamps
    end
  end
end
