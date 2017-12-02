require 'test_helper'

class CenasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cena = cenas(:one)
  end

  test "should get index" do
    get cenas_url
    assert_response :success
  end

  test "should get new" do
    get new_cena_url
    assert_response :success
  end

  # # test "should create cena" do
  # #   assert_difference('Cena.count') do
  # #     post cenas_url, params: { cena: { capitulo_id: @cena.capitulo_id, conteudo: @cena.conteudo, titulo: @cena.titulo } }
  # #   end

  #   assert_redirected_to cena_url(Cena.last)
  # end

  test "should show cena" do
    get cena_url(@cena)
    assert_response :success
  end

  test "should get edit" do
    get edit_cena_url(@cena)
    assert_response :success
  end

  # test "should update cena" do
  #   patch cena_url(@cena), params: { cena: { capitulo_id: @cena.capitulo_id, conteudo: @cena.conteudo, titulo: @cena.titulo } }
  #   assert_redirected_to cena_url(@cena)
  # end

  test "should destroy cena" do
    assert_difference('Cena.count', -1) do
      delete cena_url(@cena)
    end

    assert_redirected_to cenas_url
  end
end
