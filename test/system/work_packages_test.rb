require "application_system_test_case"

class WorkPackagesTest < ApplicationSystemTestCase
  setup do
    @work_package = work_packages(:one)
  end

  test "visiting the index" do
    visit work_packages_url
    assert_selector "h1", text: "Work Packages"
  end

  test "creating a Work package" do
    visit work_packages_url
    click_on "New Work Package"

    fill_in "Actual release date", with: @work_package.actual_release_date
    fill_in "Code", with: @work_package.code
    fill_in "Date", with: @work_package.date
    fill_in "Integer", with: @work_package.integer
    fill_in "Market", with: @work_package.market_id
    fill_in "Name", with: @work_package.name
    fill_in "Release gate", with: @work_package.release_gate_id
    fill_in "Target release date", with: @work_package.target_release_date
    click_on "Create Work package"

    assert_text "Work package was successfully created"
    click_on "Back"
  end

  test "updating a Work package" do
    visit work_packages_url
    click_on "Edit", match: :first

    fill_in "Actual release date", with: @work_package.actual_release_date
    fill_in "Code", with: @work_package.code
    fill_in "Date", with: @work_package.date
    fill_in "Integer", with: @work_package.integer
    fill_in "Market", with: @work_package.market_id
    fill_in "Name", with: @work_package.name
    fill_in "Release gate", with: @work_package.release_gate_id
    fill_in "Target release date", with: @work_package.target_release_date
    click_on "Update Work package"

    assert_text "Work package was successfully updated"
    click_on "Back"
  end

  test "destroying a Work package" do
    visit work_packages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work package was successfully destroyed"
  end
end
