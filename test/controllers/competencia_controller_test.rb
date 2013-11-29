require 'test_helper'

class CompetenciaControllerTest < ActionController::TestCase
  setup do
    @competencium = competencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competencium" do
    assert_difference('Competencium.count') do
      post :create, competencium: { nome: @competencium.nome, utilizador_id: @competencium.utilizador_id }
    end

    assert_redirected_to competencium_path(assigns(:competencium))
  end

  test "should show competencium" do
    get :show, id: @competencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competencium
    assert_response :success
  end

  test "should update competencium" do
    patch :update, id: @competencium, competencium: { nome: @competencium.nome, utilizador_id: @competencium.utilizador_id }
    assert_redirected_to competencium_path(assigns(:competencium))
  end

  test "should destroy competencium" do
    assert_difference('Competencium.count', -1) do
      delete :destroy, id: @competencium
    end

    assert_redirected_to competencia_path
  end
end
