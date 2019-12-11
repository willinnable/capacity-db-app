require 'test_helper'

class WorkPackagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_package = work_packages(:one)
  end

  test "should get index" do
    get work_packages_url
    assert_response :success
  end

  test "should get new" do
    get new_work_package_url
    assert_response :success
  end

  test "should create work_package" do
    assert_difference('WorkPackage.count') do
      post work_packages_url, params: { work_package: { actual_release_date: @work_package.actual_release_date, code: @work_package.code, date: @work_package.date, integer: @work_package.integer, market_id: @work_package.market_id, name: @work_package.name, release_gate_id: @work_package.release_gate_id, target_release_date: @work_package.target_release_date } }
    end

    assert_redirected_to work_package_url(WorkPackage.last)
  end

  test "should show work_package" do
    get work_package_url(@work_package)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_package_url(@work_package)
    assert_response :success
  end

  test "should update work_package" do
    patch work_package_url(@work_package), params: { work_package: { actual_release_date: @work_package.actual_release_date, code: @work_package.code, date: @work_package.date, integer: @work_package.integer, market_id: @work_package.market_id, name: @work_package.name, release_gate_id: @work_package.release_gate_id, target_release_date: @work_package.target_release_date } }
    assert_redirected_to work_package_url(@work_package)
  end

  test "should destroy work_package" do
    assert_difference('WorkPackage.count', -1) do
      delete work_package_url(@work_package)
    end

    assert_redirected_to work_packages_url
  end
end
