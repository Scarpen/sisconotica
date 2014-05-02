require 'test_helper'

class TipoFuncionariosControllerTest < ActionController::TestCase
  setup do
    @tipo_funcionario = tipo_funcionarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_funcionarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_funcionario" do
    assert_difference('TipoFuncionario.count') do
      post :create, tipo_funcionario: { tipo: @tipo_funcionario.tipo }
    end

    assert_redirected_to tipo_funcionario_path(assigns(:tipo_funcionario))
  end

  test "should show tipo_funcionario" do
    get :show, id: @tipo_funcionario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_funcionario
    assert_response :success
  end

  test "should update tipo_funcionario" do
    patch :update, id: @tipo_funcionario, tipo_funcionario: { tipo: @tipo_funcionario.tipo }
    assert_redirected_to tipo_funcionario_path(assigns(:tipo_funcionario))
  end

  test "should destroy tipo_funcionario" do
    assert_difference('TipoFuncionario.count', -1) do
      delete :destroy, id: @tipo_funcionario
    end

    assert_redirected_to tipo_funcionarios_path
  end
end
