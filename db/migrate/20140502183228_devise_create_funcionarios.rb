class DeviseCreateFuncionarios < ActiveRecord::Migration
  def change
    create_table(:funcionarios) do |t|
      ## Database authenticatable
      t.string :email, default: ""
      t.string :encrypted_password, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :nome
      t.string :foneResidencial
      t.string :foneCelular
      t.string :Endereco
      t.string :cpf
      t.string :bairro
      t.string :estado
      t.string :cidade
      t.string :cep
      t.string :imagem
      t.string :fotoFuncionario
      t.date :DataNascimento

      t.timestamps
    end

    add_index :funcionarios, :email,                unique: true
    add_index :funcionarios, :reset_password_token, unique: true
    # add_index :funcionarios, :confirmation_token,   unique: true
    # add_index :funcionarios, :unlock_token,         unique: true
  end
end
