require 'test_helper'

def setup
  @titulo_base = "Terceiro App Web II"
  end
  

class PaginasEstaticasControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get paginas_estaticas_inicio_url
    assert_response :success
    assert_select "inicio" , "Início | #{@titulo_base}"
    end
    

  test "should get ajuda" do
    get paginas_estaticas_ajuda_url
    assert_response :success
    assert_select "ajuda" , "Ajuda | #{@titulo_base}"
  end

  test "should get sobre" do
    get paginas_estaticas_sobre_url
    assert_response :success
    assert_select "sobre" , "Sobre | #{@titulo_base}"
  end

  
end
