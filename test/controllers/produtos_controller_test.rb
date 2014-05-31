require 'test_helper'

class ProdutosControllerTest < ActionController::TestCase
  setup do
    @produto = produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produto" do
    assert_difference('Produto.count') do
      post :create, produto: { cor: @produto.cor, fornecedor: @produto.fornecedor, imagem: @produto.imagem, marca: @produto.marca, modelo: @produto.modelo, precoCusto: @produto.precoCusto, precoVenda: @produto.precoVenda, quant_fisica: @produto.quant_fisica, quanti_estoque: @produto.quanti_estoque, tamanho: @produto.tamanho, tipo_produto_id: @produto.tipo_produto_id, unidade: @produto.unidade }
    end

    assert_redirected_to produto_path(assigns(:produto))
  end

  test "should show produto" do
    get :show, id: @produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produto
    assert_response :success
  end

  test "should update produto" do
    patch :update, id: @produto, produto: { cor: @produto.cor, fornecedor: @produto.fornecedor, imagem: @produto.imagem, marca: @produto.marca, modelo: @produto.modelo, precoCusto: @produto.precoCusto, precoVenda: @produto.precoVenda, quant_fisica: @produto.quant_fisica, quanti_estoque: @produto.quanti_estoque, tamanho: @produto.tamanho, tipo_produto_id: @produto.tipo_produto_id, unidade: @produto.unidade }
    assert_redirected_to produto_path(assigns(:produto))
  end

  test "should destroy produto" do
    assert_difference('Produto.count', -1) do
      delete :destroy, id: @produto
    end

    assert_redirected_to produtos_path
  end
end
