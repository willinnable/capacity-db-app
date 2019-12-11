require "application_system_test_case"

class ReleaseGatesTest < ApplicationSystemTestCase
  setup do
    @release_gate = release_gates(:one)
  end

  test "visiting the index" do
    visit release_gates_url
    assert_selector "h1", text: "Release Gates"
  end

  test "creating a Release gate" do
    visit release_gates_url
    click_on "New Release Gate"

    fill_in "Code", with: @release_gate.code
    fill_in "Description", with: @release_gate.description
    click_on "Create Release gate"

    assert_text "Release gate was successfully created"
    click_on "Back"
  end

  test "updating a Release gate" do
    visit release_gates_url
    click_on "Edit", match: :first

    fill_in "Code", with: @release_gate.code
    fill_in "Description", with: @release_gate.description
    click_on "Update Release gate"

    assert_text "Release gate was successfully updated"
    click_on "Back"
  end

  test "destroying a Release gate" do
    visit release_gates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Release gate was successfully destroyed"
  end
end
