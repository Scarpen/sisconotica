class Produto < ActiveRecord::Base
	belongs_to :tipo_produto

	def self.search(search)
	 	if search
	  		if search.eql?""
	     		Produto.all
	  		else
	     		where("modelo like ?", "%#{search}%")
	   		end
	 	else
	  		Produto.all
	 	end
	end
end
