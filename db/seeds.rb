# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

f = Funcionario.new
f.nome = "Admin"
f.cpf = "123.456.789-00"
f.password = "administrador"
f.password_confirmation = "administrador"
f.email = "admin@sisconotica.com"
f.tipo = "Administrador"
f.save



f = Funcionario.new
f.nome = "Nicolle"
f.cpf = "945.213.102-06"
f.tipo = "Administrador"
f.email = "nicjunsu@hotmail.com"
f.password = "12345678"
f.password_confirmation = "12345678"
f.dataNascimento = Date.new(1995,11,6)
f.foneResidencial = "(91)3233-7945"
f.foneCelular = "(91)8292-9220"
f.endereco = "Av. Gentil"
f.bairro = "Nazaré"
f.estado = "PA"
f.cidade = "Belém"
f.cep = "66040-172"
f.save


f = Funcionario.new
f.nome = "Juliana"
f.cpf = "987.654.321-00"
f.tipo = "Vendedor"
f.email = "cs2.juliana@gmail.com"
f.password = "12345678"
f.password_confirmation = "12345678"
f.dataNascimento = Date.new(1900,12,24)
f.foneResidencial = "(91)3221-7367"
f.foneCelular = "(91)8191-9220"
f.endereco = "Cidade Nova"
f.bairro = "Coqueiro"
f.estado = "PA"
f.cidade = "Belém"
f.cep = "60045-180"
f.save








c = Cliente.new
c.nome = "Elaine"
c.cpf = "213.345.678-12"
c.email = "ecs2@gmail.com"
c.dataNascimento = Date.new(1980,10,1)
c.foneResidencial = "(91)3100-7251"
c.foneCelular = "(91)8642-9110"
c.endereco = "40 horas"
c.bairro = "Coqueiro"
c.estado = "PA"
c.cidade = "Belém"
c.cep = "60000-001"
c.save


c = Cliente.new
c.nome = "Daine"
c.cpf = "113.345.676-11"
c.email = "222daine2@gmail.com"
c.dataNascimento = Date.new(1950,9,1)
c.foneResidencial = "(91)3120-7151"
c.foneCelular = "(91)8142-9120"
c.endereco = "Timbó"
c.bairro = "Pedreira"
c.estado = "PA"
c.cidade = "Belém"
c.cep = "60000-001"
c.save


c = Cliente.new
c.nome = "Sakura"
c.cpf = "123.312.623-10"
c.email = "devopegarcartas@gmail.com"
c.dataNascimento = Date.new(2000,7,1)
c.foneResidencial = "(81)3120-7151"
c.foneCelular = "(81)8142-9120"
c.endereco = "Rua onde o Yukito passa"
c.bairro = "Japão"
c.estado = "RS"
c.cidade = "Tokyo"
c.cep = "40000-001"
c.save


c = Cliente.new
c.nome = "Yusuke Urameshi"
c.cpf = "113.345.676-11"
c.email = "precisoressuscitar@gmail.com"
c.dataNascimento = Date.new(1990,7,1)
c.foneResidencial = "(81)3120-7151"
c.foneCelular = "(81)8142-9120"
c.endereco = "Rua onde a Keiko passa"
c.bairro = "Japão"
c.estado = "RS"
c.cidade = "Tokyo"
c.cep = "70000-001"
c.save

c = Cliente.new
c.nome = "Goku"
c.cpf = "000.000.000-01"
c.email = "precisojuntarasesferasdodragao@hotmail.com"
c.dataNascimento = Date.new(1970,4,20)
c.foneResidencial = "(71)3110-8151"
c.foneCelular = "(81)8142-8120"
c.endereco = "Rua onde o Vegeta não passa"
c.bairro = "Japão"
c.estado = "RS"
c.cidade = "Tokyo"
c.cep = "80000-001"
c.save


c = Cliente.new
c.nome = "Zero"
c.cpf = "000.000.000-00"
c.email = "precisoaprendermagia@hotmail.com"
c.dataNascimento = Date.new(1995,4,10)
c.foneResidencial = "(71)3170-1151"
c.foneCelular = "(81)8142-8120"
c.endereco = "Rua onde tem magia"
c.bairro = "Japão"
c.estado = "RS"
c.cidade = "Tokyo"
c.cep = "80000-001"
c.save


c = Cliente.new
c.nome = "Yugi"
c.cpf = "010.020.100-10"
c.email = "paladinonegro@hotmail.com"
c.dataNascimento = Date.new(1990,4,11)
c.foneResidencial = "(71)3110-1151"
c.foneCelular = "(81)8132-8120"
c.endereco = "Rua onde o Kaiba não passa"
c.bairro = "Japão"
c.estado = "RS"
c.cidade = "Tokyo"
c.cep = "80050-001"
c.save

c = Cliente.new
c.nome = "Inuyasha"
c.cpf = "000.020.100-10"
c.email = "fragmentosdajoia@hotmail.com"
c.dataNascimento = Date.new(1700,4,10)
c.foneResidencial = "(71)3110-1211"
c.foneCelular = "(81)8132-7120"
c.endereco = "Templo feudal"
c.bairro = "Japão"
c.estado = "RS"
c.cidade = "Tokyo"
c.cep = "80650-011"
c.save


c = Cliente.new
c.nome = "Isadora"
c.cpf = "110.10.120-10"
c.email = "nicolle@hotmail.com"
c.dataNascimento = Date.new(1991,2,1)
c.foneResidencial = "(91)3110-1151"
c.foneCelular = "(91)8132-8120"
c.endereco = "Vileta"
c.bairro = "Pedreira"
c.estado = "PA"
c.cidade = "Belem"
c.cep = "66050-001"
c.save


tipo = TipoProduto.new
tipo.tipo = "Lente"
tipo.save

tipo = TipoProduto.new
tipo.tipo = "Oculos de grau"
tipo.save

tipo = TipoProduto.new
tipo.tipo = "Oculos de sol"
tipo.save

tipo = TipoProduto.new
tipo.tipo = "Armação"
tipo.save

tipo = TipoProduto.new
tipo.tipo = "Borrachinha"
tipo.save


p = Produto.new
p.modelo = "Oculos Ray-Ban 1028"
p.precoVenda = 500.0
p.precoCusto = 300.7
p.quant_fisica = 100
p.cor = "vermelho"
p.tamanho = 10
p.quanti_estoque = 50
p.fornecedor = "Oculos Caros"
p.marca = "Ray-Ban"
p.unidade = "UND"
p.tipo_produto_id = 1
p.save


p = Produto.new
p.modelo = "Oculos John"
p.precoVenda = 100.0
p.precoCusto = 50.7
p.quant_fisica = 50
p.cor = "azul"
p.tamanho = 5
p.quanti_estoque = 10
p.fornecedor = "Oculos John & John"
p.marca = "John"
p.unidade = "UND"
p.tipo_produto_id = 2
p.save


p = Produto.new
p.modelo = "Oculos John"
p.precoVenda = 100.0
p.precoCusto = 50.7
p.quant_fisica = 50
p.cor = "azul"
p.tamanho = 5
p.quanti_estoque = 10
p.fornecedor = "Oculos John & John"
p.marca = "John"
p.unidade = "UND"
p.tipo_produto_id = 3
p.save


p = Produto.new
p.modelo = "Oculos John"
p.precoVenda = 100.0
p.precoCusto = 50.7
p.quant_fisica = 50
p.cor = "azul"
p.tamanho = 5
p.quanti_estoque = 10
p.fornecedor = "Oculos John & John"
p.marca = "John"
p.unidade = "UND"
p.tipo_produto_id = 4
p.save

produto = TipoProduto.new
p = Produto.new
p.modelo = "Oculos Juli"
p.precoVenda = 50.0
p.precoCusto = 10.7
p.quant_fisica = 100
p.cor = "amarelo"
p.tamanho = 15
p.quanti_estoque = 50
p.fornecedor = "Oculos Juli Ana"
p.marca = "Juli Ana"
p.unidade = "UND"
p.tipo_produto_id = 5
p.save
