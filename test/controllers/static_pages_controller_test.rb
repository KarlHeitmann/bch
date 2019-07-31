require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get static_pages_inicio_url
    assert_response :success
  end

  test "should get cursos" do
    get static_pages_cursos_url
    assert_response :success
  end

  test "should get tarifas" do
    get static_pages_tarifas_url
    assert_response :success
  end

  test "should get contacto" do
    get static_pages_contacto_url
    assert_response :success
  end

end
