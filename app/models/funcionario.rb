class Funcionario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:cpf]

    validates :email, :nome, :cpf,
	presence: true
	validates :email, :cpf, uniqueness: true


end
