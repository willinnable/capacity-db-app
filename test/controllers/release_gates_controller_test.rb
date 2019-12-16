require 'test_helper'

class ReleaseGatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @release_gate = release_gates(:one)
  end

  test "should get index" do
    get release_gates_url
    assert_response :success
  end

  test "should get new" do
    get new_release_gate_url
    assert_response :success
  end

  test "should create release_gate" do
    assert_difference('ReleaseGate.count') do
      post release_gates_url, params: { release_gate: { code: @release_gate.code, description: @release_gate.description } }
    end

    assert_redirected_to release_gate_url(ReleaseGate.last)
  end

  test "should show release_gate" do
    get release_gate_url(@release_gate)
    assert_response :success
  end

  test "should get edit" do
    get edit_release_gate_url(@release_gate)
    assert_response :success
  end

  test "should update release_gate" do
    patch release_gate_url(@release_gate), params: { release_gate: { code: @release_gate.code, description: @release_gate.description } }
    assert_redirected_to release_gate_url(@release_gate)
  end

  test "should destroy release_gate" do
    assert_difference('ReleaseGate.count', -1) do
      delete release_gate_url(@release_gate)
    end

    assert_redirected_to release_gates_url
  end
end
