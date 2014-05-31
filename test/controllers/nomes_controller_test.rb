require 'test_helper'

class NomesControllerTest < ActionController::TestCase
  setup do
    @nome = nomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nome" do
    assert_difference('Nome.count') do
      post :create, nome: { Cpf: @nome.Cpf, DataNascimento: @nome.DataNascimento, FoneCelular: @nome.FoneCelular, FotoCliente: @nome.FotoCliente, bairro: @nome.bairro, cep: @nome.cep, cidade: @nome.cidade, email: @nome.email, endereco: @nome.endereco, estado: @nome.estado, foneResidencial: @nome.foneResidencial }
    end

    assert_redirected_to nome_path(assigns(:nome))
  end

  test "should show nome" do
    get :show, id: @nome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nome
    assert_response :success
  end

  test "should update nome" do
    patch :update, id: @nome, nome: { Cpf: @nome.Cpf, DataNascimento: @nome.DataNascimento, FoneCelular: @nome.FoneCelular, FotoCliente: @nome.FotoCliente, bairro: @nome.bairro, cep: @nome.cep, cidade: @nome.cidade, email: @nome.email, endereco: @nome.endereco, estado: @nome.estado, foneResidencial: @nome.foneResidencial }
    assert_redirected_to nome_path(assigns(:nome))
  end

  test "should destroy nome" do
    assert_difference('Nome.count', -1) do
      delete :destroy, id: @nome
    end

    assert_redirected_to nomes_path
  end
end
