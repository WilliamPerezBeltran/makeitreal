require "application_system_test_case"

class CursesTest < ApplicationSystemTestCase
  setup do
    @curse = curses(:one)
  end

  test "visiting the index" do
    visit curses_url
    assert_selector "h1", text: "Curses"
  end

  test "creating a Curse" do
    visit curses_url
    click_on "New Curse"

    fill_in "Title", with: @curse.title
    click_on "Create Curse"

    assert_text "Curse was successfully created"
    click_on "Back"
  end

  test "updating a Curse" do
    visit curses_url
    click_on "Edit", match: :first

    fill_in "Title", with: @curse.title
    click_on "Update Curse"

    assert_text "Curse was successfully updated"
    click_on "Back"
  end

  test "destroying a Curse" do
    visit curses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curse was successfully destroyed"
  end
end
