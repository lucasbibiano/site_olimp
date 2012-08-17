require 'test_helper'

class CompeticoesControllerTest < ActionController::TestCase
  setup do
    @competicao = competicoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competicoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competicao" do
    assert_difference('Competicao.count') do
      post :create, competicao: { idade_max: @competicao.idade_max, idade_min: @competicao.idade_min, nome: @competicao.nome, sexo: @competicao.sexo }
    end

    assert_redirected_to competicao_path(assigns(:competicao))
  end

  test "should show competicao" do
    get :show, id: @competicao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competicao
    assert_response :success
  end

  test "should update competicao" do
    put :update, id: @competicao, competicao: { idade_max: @competicao.idade_max, idade_min: @competicao.idade_min, nome: @competicao.nome, sexo: @competicao.sexo }
    assert_redirected_to competicao_path(assigns(:competicao))
  end

  test "should destroy competicao" do
    assert_difference('Competicao.count', -1) do
      delete :destroy, id: @competicao
    end

    assert_redirected_to competicoes_path
  end
end
