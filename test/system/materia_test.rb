require "application_system_test_case"

class MateriaTest < ApplicationSystemTestCase
  setup do
    @materium = materia(:one)
  end

  test "visiting the index" do
    visit materia_url
    assert_selector "h1", text: "Materia"
  end

  test "creating a Materium" do
    visit materia_url
    click_on "New Materium"

    fill_in "Clave", with: @materium.clave
    fill_in "Clu clases", with: @materium.clu_clases
    fill_in "Clu laboratorio", with: @materium.clu_laboratorio
    fill_in "Clu unidades", with: @materium.clu_unidades
    fill_in "Estatus", with: @materium.estatus
    fill_in "Info", with: @materium.info
    fill_in "Nombre", with: @materium.nombre
    fill_in "Tipo", with: @materium.tipo
    click_on "Create Materium"

    assert_text "Materium was successfully created"
    click_on "Back"
  end

  test "updating a Materium" do
    visit materia_url
    click_on "Edit", match: :first

    fill_in "Clave", with: @materium.clave
    fill_in "Clu clases", with: @materium.clu_clases
    fill_in "Clu laboratorio", with: @materium.clu_laboratorio
    fill_in "Clu unidades", with: @materium.clu_unidades
    fill_in "Estatus", with: @materium.estatus
    fill_in "Info", with: @materium.info
    fill_in "Nombre", with: @materium.nombre
    fill_in "Tipo", with: @materium.tipo
    click_on "Update Materium"

    assert_text "Materium was successfully updated"
    click_on "Back"
  end

  test "destroying a Materium" do
    visit materia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Materium was successfully destroyed"
  end
end
