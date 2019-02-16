require 'test_helper'

class MateriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materium = materia(:one)
  end

  test "should get index" do
    get materia_url
    assert_response :success
  end

  test "should get new" do
    get new_materium_url
    assert_response :success
  end

  test "should create materium" do
    assert_difference('Materium.count') do
      post materia_url, params: { materium: { clave: @materium.clave, clu_clases: @materium.clu_clases, clu_laboratorio: @materium.clu_laboratorio, clu_unidades: @materium.clu_unidades, estatus: @materium.estatus, info: @materium.info, nombre: @materium.nombre, tipo: @materium.tipo } }
    end

    assert_redirected_to materium_url(Materium.last)
  end

  test "should show materium" do
    get materium_url(@materium)
    assert_response :success
  end

  test "should get edit" do
    get edit_materium_url(@materium)
    assert_response :success
  end

  test "should update materium" do
    patch materium_url(@materium), params: { materium: { clave: @materium.clave, clu_clases: @materium.clu_clases, clu_laboratorio: @materium.clu_laboratorio, clu_unidades: @materium.clu_unidades, estatus: @materium.estatus, info: @materium.info, nombre: @materium.nombre, tipo: @materium.tipo } }
    assert_redirected_to materium_url(@materium)
  end

  test "should destroy materium" do
    assert_difference('Materium.count', -1) do
      delete materium_url(@materium)
    end

    assert_redirected_to materia_url
  end
end
