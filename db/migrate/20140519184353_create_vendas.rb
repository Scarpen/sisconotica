class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.date :data
      t.float :valorTotal

      t.timestamps
    end
  end
end
