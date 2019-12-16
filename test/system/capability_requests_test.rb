require "application_system_test_case"

class CapabilityRequestsTest < ApplicationSystemTestCase
  setup do
    @capability_request = capability_requests(:one)
  end

  test "visiting the index" do
    visit capability_requests_url
    assert_selector "h1", text: "Capability Requests"
  end

  test "creating a Capability request" do
    visit capability_requests_url
    click_on "New Capability Request"

    fill_in "Code", with: @capability_request.code
    fill_in "Comments", with: @capability_request.comments
    fill_in "Complexity", with: @capability_request.complexity_id
    fill_in "Name", with: @capability_request.name
    fill_in "Release gate", with: @capability_request.release_gate_id
    fill_in "Work package", with: @capability_request.work_package_id
    click_on "Create Capability request"

    assert_text "Capability request was successfully created"
    click_on "Back"
  end

  test "updating a Capability request" do
    visit capability_requests_url
    click_on "Edit", match: :first

    fill_in "Code", with: @capability_request.code
    fill_in "Comments", with: @capability_request.comments
    fill_in "Complexity", with: @capability_request.complexity_id
    fill_in "Name", with: @capability_request.name
    fill_in "Release gate", with: @capability_request.release_gate_id
    fill_in "Work package", with: @capability_request.work_package_id
    click_on "Update Capability request"

    assert_text "Capability request was successfully updated"
    click_on "Back"
  end

  test "destroying a Capability request" do
    visit capability_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Capability request was successfully destroyed"
  end
end
