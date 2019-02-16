require 'test_helper'

class VinculacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vinculacion = vinculacions(:one)
  end

  test "should get index" do
    get vinculacions_url
    assert_response :success
  end

  test "should get new" do
    get new_vinculacion_url
    assert_response :success
  end

  test "should create vinculacion" do
    assert_difference('Vinculacion.count') do
      post vinculacions_url, params: { vinculacion: { descripcion: @vinculacion.descripcion, fecha_fin: @vinculacion.fecha_fin, fecha_inicio: @vinculacion.fecha_inicio, nombre: @vinculacion.nombre, participantes: @vinculacion.participantes, tipo: @vinculacion.tipo, url: @vinculacion.url } }
    end

    assert_redirected_to vinculacion_url(Vinculacion.last)
  end

  test "should show vinculacion" do
    get vinculacion_url(@vinculacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_vinculacion_url(@vinculacion)
    assert_response :success
  end

  test "should update vinculacion" do
    patch vinculacion_url(@vinculacion), params: { vinculacion: { descripcion: @vinculacion.descripcion, fecha_fin: @vinculacion.fecha_fin, fecha_inicio: @vinculacion.fecha_inicio, nombre: @vinculacion.nombre, participantes: @vinculacion.participantes, tipo: @vinculacion.tipo, url: @vinculacion.url } }
    assert_redirected_to vinculacion_url(@vinculacion)
  end

  test "should destroy vinculacion" do
    assert_difference('Vinculacion.count', -1) do
      delete vinculacion_url(@vinculacion)
    end

    assert_redirected_to vinculacions_url
  end
end
