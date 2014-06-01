module VendasHelper
	def variaveis
		@clientes = Cliente.all
		cliente_id = nil 
	end
end
