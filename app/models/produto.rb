class Produto < ActiveRecord::Base
	belongs_to :tipo_produto

	def buscar(nome)
		return Produto.joins(:tipo_produto).where("nome = ?", nome)
	end
end
