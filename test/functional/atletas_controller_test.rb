require 'test_helper'

class AtletasControllerTest < ActionController::TestCase
  setup do
    @atleta = atletas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atletas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atleta" do
    assert_difference('Atleta.count') do
      post :create, atleta: { idade: @atleta.idade, nome: @atleta.nome, sexo: @atleta.sexo }
    end

    assert_redirected_to atleta_path(assigns(:atleta))
  end

  test "should show atleta" do
    get :show, id: @atleta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atleta
    assert_response :success
  end

  test "should update atleta" do
    put :update, id: @atleta, atleta: { idade: @atleta.idade, nome: @atleta.nome, sexo: @atleta.sexo }
    assert_redirected_to atleta_path(assigns(:atleta))
  end

  test "should destroy atleta" do
    assert_difference('Atleta.count', -1) do
      delete :destroy, id: @atleta
    end

    assert_redirected_to atletas_path
  end
end
