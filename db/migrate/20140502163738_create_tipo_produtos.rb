class CreateTipoProdutos < ActiveRecord::Migration
  def change
    create_table :tipo_produtos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
