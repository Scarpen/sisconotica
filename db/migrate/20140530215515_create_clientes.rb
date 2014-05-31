class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :foneResidencial
      t.string :FoneCelular
      t.string :Cpf
      t.string :FotoCliente
      t.string :email
      t.date :DataNascimento
      t.string :bairro
      t.string :cidade
      t.string :cep
      t.string :estado

      t.timestamps
    end
  end
end
