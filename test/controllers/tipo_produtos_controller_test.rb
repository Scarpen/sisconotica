require 'test_helper'

class TipoProdutosControllerTest < ActionController::TestCase
  setup do
    @tipo_produto = tipo_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_produto" do
    assert_difference('TipoProduto.count') do
      post :create, tipo_produto: { tipo: @tipo_produto.tipo }
    end

    assert_redirected_to tipo_produto_path(assigns(:tipo_produto))
  end

  test "should show tipo_produto" do
    get :show, id: @tipo_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_produto
    assert_response :success
  end

  test "should update tipo_produto" do
    patch :update, id: @tipo_produto, tipo_produto: { tipo: @tipo_produto.tipo }
    assert_redirected_to tipo_produto_path(assigns(:tipo_produto))
  end

  test "should destroy tipo_produto" do
    assert_difference('TipoProduto.count', -1) do
      delete :destroy, id: @tipo_produto
    end

    assert_redirected_to tipo_produtos_path
  end
end
