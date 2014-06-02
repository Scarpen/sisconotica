class Cliente < ActiveRecord::Base
    validates :email, :nome, :cpf,
	presence: true
	validates :email, :cpf, uniqueness: true
end
