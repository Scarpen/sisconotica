class Produto < ActiveRecord::Base
	belongs_to :tipo_produto
	has_and_belongs_to_many :vendas

	def self.search(search)
	 	if search
	  		if search.eql?""
	     		Produto.all
	  		else
	     		where("nome like ?", "%#{search}%")
	   		end
	 	else
	  		Produto.all
	 	end
	end
end
