require 'test_helper'

class CapabilityRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capability_request = capability_requests(:one)
  end

  test "should get index" do
    get capability_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_capability_request_url
    assert_response :success
  end

  test "should create capability_request" do
    assert_difference('CapabilityRequest.count') do
      post capability_requests_url, params: { capability_request: { code: @capability_request.code, comments: @capability_request.comments, complexity_id: @capability_request.complexity_id, name: @capability_request.name, release_gate_id: @capability_request.release_gate_id, work_package_id: @capability_request.work_package_id } }
    end

    assert_redirected_to capability_request_url(CapabilityRequest.last)
  end

  test "should show capability_request" do
    get capability_request_url(@capability_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_capability_request_url(@capability_request)
    assert_response :success
  end

  test "should update capability_request" do
    patch capability_request_url(@capability_request), params: { capability_request: { code: @capability_request.code, comments: @capability_request.comments, complexity_id: @capability_request.complexity_id, name: @capability_request.name, release_gate_id: @capability_request.release_gate_id, work_package_id: @capability_request.work_package_id } }
    assert_redirected_to capability_request_url(@capability_request)
  end

  test "should destroy capability_request" do
    assert_difference('CapabilityRequest.count', -1) do
      delete capability_request_url(@capability_request)
    end

    assert_redirected_to capability_requests_url
  end
end
