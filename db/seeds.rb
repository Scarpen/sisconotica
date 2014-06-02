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
