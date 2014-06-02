# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140602040113) do

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "foneResidencial"
    t.string   "foneCelular"
    t.string   "cpf"
    t.string   "fotoCliente"
    t.string   "email"
    t.date     "dataNascimento"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "cep"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", force: true do |t|
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nome"
    t.string   "foneResidencial"
    t.string   "foneCelular"
    t.string   "endereco"
    t.string   "cpf"
    t.string   "bairro"
    t.string   "estado"
    t.string   "cidade"
    t.string   "cep"
    t.string   "imagem"
    t.string   "fotoFuncionario"
    t.date     "dataNascimento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  add_index "funcionarios", ["email"], name: "index_funcionarios_on_email", unique: true
  add_index "funcionarios", ["reset_password_token"], name: "index_funcionarios_on_reset_password_token", unique: true

  create_table "produtos", force: true do |t|
    t.string   "modelo"
    t.float    "precoVenda"
    t.float    "precoCusto"
    t.string   "quant_fisica"
    t.string   "cor"
    t.string   "tamanho"
    t.string   "quanti_estoque"
    t.string   "fornecedor"
    t.string   "marca"
    t.string   "imagem"
    t.string   "unidade"
    t.string   "tipo_produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_funcionarios", force: true do |t|
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_produtos", force: true do |t|
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendas", force: true do |t|
    t.date     "data"
    t.float    "valorTotal"
    t.integer  "cliente_id"
    t.integer  "funcionario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendas_produtos", force: true do |t|
    t.integer  "produto_id"
    t.integer  "venda_id"
    t.integer  "quantidade"
    t.float    "valorUnit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
