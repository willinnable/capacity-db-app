require "application_system_test_case"

class CapabilityRequestResourceReleasesTest < ApplicationSystemTestCase
  setup do
    @capability_request_resource_release = capability_request_resource_releases(:one)
  end

  test "visiting the index" do
    visit capability_request_resource_releases_url
    assert_selector "h1", text: "Capability Request Resource Releases"
  end

  test "creating a Capability request resource release" do
    visit capability_request_resource_releases_url
    click_on "New Capability Request Resource Release"

    fill_in "Capability", with: @capability_request_resource_release.capability_id
    fill_in "Release", with: @capability_request_resource_release.release_id
    fill_in "Resource", with: @capability_request_resource_release.resource_id
    click_on "Create Capability request resource release"

    assert_text "Capability request resource release was successfully created"
    click_on "Back"
  end

  test "updating a Capability request resource release" do
    visit capability_request_resource_releases_url
    click_on "Edit", match: :first

    fill_in "Capability", with: @capability_request_resource_release.capability_id
    fill_in "Release", with: @capability_request_resource_release.release_id
    fill_in "Resource", with: @capability_request_resource_release.resource_id
    click_on "Update Capability request resource release"

    assert_text "Capability request resource release was successfully updated"
    click_on "Back"
  end

  test "destroying a Capability request resource release" do
    visit capability_request_resource_releases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Capability request resource release was successfully destroyed"
  end
end
