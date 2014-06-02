class WelcomeController < ApplicationController
	before_action :authenticate_funcionario!

	def index
	end

	def consultar
	end

	def relatorios
		@vendas = Venda.all
	end

	def cadastrar
	end

	def listafuncionarios

	end
end
