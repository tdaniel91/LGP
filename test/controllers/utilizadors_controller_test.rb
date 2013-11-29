require 'test_helper'

class UtilizadorsControllerTest < ActionController::TestCase
  setup do
    @utilizador = utilizadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:utilizadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create utilizador" do
    assert_difference('Utilizador.count') do
      post :create, utilizador: { data_nascimento: @utilizador.data_nascimento, email: @utilizador.email, localidade: @utilizador.localidade, nome: @utilizador.nome, telefone: @utilizador.telefone }
    end

    assert_redirected_to utilizador_path(assigns(:utilizador))
  end

  test "should show utilizador" do
    get :show, id: @utilizador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @utilizador
    assert_response :success
  end

  test "should update utilizador" do
    patch :update, id: @utilizador, utilizador: { data_nascimento: @utilizador.data_nascimento, email: @utilizador.email, localidade: @utilizador.localidade, nome: @utilizador.nome, telefone: @utilizador.telefone }
    assert_redirected_to utilizador_path(assigns(:utilizador))
  end

  test "should destroy utilizador" do
    assert_difference('Utilizador.count', -1) do
      delete :destroy, id: @utilizador
    end

    assert_redirected_to utilizadors_path
  end
end
