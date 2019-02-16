require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  setup do
    @course = courses(:one)
  end

  test "visiting the index" do
    visit courses_url
    assert_selector "h1", text: "Courses"
  end

  test "creating a Course" do
    visit courses_url
    click_on "New Course"

    fill_in "Clu course", with: @course.clu_course
    fill_in "Clu laboratory", with: @course.clu_laboratory
    fill_in "Clu unities", with: @course.clu_unities
    fill_in "Code", with: @course.code
    fill_in "Information", with: @course.information
    fill_in "Name", with: @course.name
    fill_in "Status", with: @course.status
    fill_in "Type", with: @course.type
    click_on "Create Course"

    assert_text "Course was successfully created"
    click_on "Back"
  end

  test "updating a Course" do
    visit courses_url
    click_on "Edit", match: :first

    fill_in "Clu course", with: @course.clu_course
    fill_in "Clu laboratory", with: @course.clu_laboratory
    fill_in "Clu unities", with: @course.clu_unities
    fill_in "Code", with: @course.code
    fill_in "Information", with: @course.information
    fill_in "Name", with: @course.name
    fill_in "Status", with: @course.status
    fill_in "Type", with: @course.type
    click_on "Update Course"

    assert_text "Course was successfully updated"
    click_on "Back"
  end

  test "destroying a Course" do
    visit courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course was successfully destroyed"
  end
end
