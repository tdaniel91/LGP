require 'test_helper'

class EmpregosControllerTest < ActionController::TestCase
  setup do
    @emprego = empregos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empregos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emprego" do
    assert_difference('Emprego.count') do
      post :create, emprego: { cargo: @emprego.cargo, data_entrada: @emprego.data_entrada, data_saida: @emprego.data_saida, empresa_id: @emprego.empresa_id, utilizador_id: @emprego.utilizador_id }
    end

    assert_redirected_to emprego_path(assigns(:emprego))
  end

  test "should show emprego" do
    get :show, id: @emprego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emprego
    assert_response :success
  end

  test "should update emprego" do
    patch :update, id: @emprego, emprego: { cargo: @emprego.cargo, data_entrada: @emprego.data_entrada, data_saida: @emprego.data_saida, empresa_id: @emprego.empresa_id, utilizador_id: @emprego.utilizador_id }
    assert_redirected_to emprego_path(assigns(:emprego))
  end

  test "should destroy emprego" do
    assert_difference('Emprego.count', -1) do
      delete :destroy, id: @emprego
    end

    assert_redirected_to empregos_path
  end
end
