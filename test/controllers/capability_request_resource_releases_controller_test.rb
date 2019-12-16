require 'test_helper'

class CapabilityRequestResourceReleasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capability_request_resource_release = capability_request_resource_releases(:one)
  end

  test "should get index" do
    get capability_request_resource_releases_url
    assert_response :success
  end

  test "should get new" do
    get new_capability_request_resource_release_url
    assert_response :success
  end

  test "should create capability_request_resource_release" do
    assert_difference('CapabilityRequestResourceRelease.count') do
      post capability_request_resource_releases_url, params: { capability_request_resource_release: { capability_id: @capability_request_resource_release.capability_id, release_id: @capability_request_resource_release.release_id, resource_id: @capability_request_resource_release.resource_id } }
    end

    assert_redirected_to capability_request_resource_release_url(CapabilityRequestResourceRelease.last)
  end

  test "should show capability_request_resource_release" do
    get capability_request_resource_release_url(@capability_request_resource_release)
    assert_response :success
  end

  test "should get edit" do
    get edit_capability_request_resource_release_url(@capability_request_resource_release)
    assert_response :success
  end

  test "should update capability_request_resource_release" do
    patch capability_request_resource_release_url(@capability_request_resource_release), params: { capability_request_resource_release: { capability_id: @capability_request_resource_release.capability_id, release_id: @capability_request_resource_release.release_id, resource_id: @capability_request_resource_release.resource_id } }
    assert_redirected_to capability_request_resource_release_url(@capability_request_resource_release)
  end

  test "should destroy capability_request_resource_release" do
    assert_difference('CapabilityRequestResourceRelease.count', -1) do
      delete capability_request_resource_release_url(@capability_request_resource_release)
    end

    assert_redirected_to capability_request_resource_releases_url
  end
end
