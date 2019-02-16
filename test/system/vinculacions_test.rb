require "application_system_test_case"

class VinculacionsTest < ApplicationSystemTestCase
  setup do
    @vinculacion = vinculacions(:one)
  end

  test "visiting the index" do
    visit vinculacions_url
    assert_selector "h1", text: "Vinculacions"
  end

  test "creating a Vinculacion" do
    visit vinculacions_url
    click_on "New Vinculacion"

    fill_in "Descripcion", with: @vinculacion.descripcion
    fill_in "Fecha fin", with: @vinculacion.fecha_fin
    fill_in "Fecha inicio", with: @vinculacion.fecha_inicio
    fill_in "Nombre", with: @vinculacion.nombre
    fill_in "Participantes", with: @vinculacion.participantes
    fill_in "Tipo", with: @vinculacion.tipo
    fill_in "Url", with: @vinculacion.url
    click_on "Create Vinculacion"

    assert_text "Vinculacion was successfully created"
    click_on "Back"
  end

  test "updating a Vinculacion" do
    visit vinculacions_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @vinculacion.descripcion
    fill_in "Fecha fin", with: @vinculacion.fecha_fin
    fill_in "Fecha inicio", with: @vinculacion.fecha_inicio
    fill_in "Nombre", with: @vinculacion.nombre
    fill_in "Participantes", with: @vinculacion.participantes
    fill_in "Tipo", with: @vinculacion.tipo
    fill_in "Url", with: @vinculacion.url
    click_on "Update Vinculacion"

    assert_text "Vinculacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Vinculacion" do
    visit vinculacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vinculacion was successfully destroyed"
  end
end
