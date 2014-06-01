class VendasProdutos < ActiveRecord::Base
	def self.produtos(search)
	 	if search
	  			where("venda_id = ?", search)
	 	end
	end
end
