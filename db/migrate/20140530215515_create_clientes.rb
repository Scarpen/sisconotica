class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :foneResidencial
      t.string :foneCelular
      t.string :cpf
      t.string :fotoCliente
      t.string :email
      t.date :dataNascimento
      t.string :bairro
      t.string :cidade
      t.string :cep
      t.string :estado

      t.timestamps
    end
  end
end
