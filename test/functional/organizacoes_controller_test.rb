require 'test_helper'

class OrganizacoesControllerTest < ActionController::TestCase
  setup do
    @organizacao = organizacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organizacao" do
    assert_difference('Organizacao.count') do
      post :create, organizacao: { nome: @organizacao.nome }
    end

    assert_redirected_to organizacao_path(assigns(:organizacao))
  end

  test "should show organizacao" do
    get :show, id: @organizacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organizacao
    assert_response :success
  end

  test "should update organizacao" do
    put :update, id: @organizacao, organizacao: { nome: @organizacao.nome }
    assert_redirected_to organizacao_path(assigns(:organizacao))
  end

  test "should destroy organizacao" do
    assert_difference('Organizacao.count', -1) do
      delete :destroy, id: @organizacao
    end

    assert_redirected_to organizacoes_path
  end
end
