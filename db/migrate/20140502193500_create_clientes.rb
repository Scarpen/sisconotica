class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :foneResidencial
      t.string :foneCelular
      t.string :cpf

      t.timestamps
    end
  end
end
