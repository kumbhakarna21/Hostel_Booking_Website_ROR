require "test_helper"

class MasterServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_service = master_services(:one)
  end

  test "should get index" do
    get master_services_url
    assert_response :success
  end

  test "should get new" do
    get new_master_service_url
    assert_response :success
  end

  test "should create master_service" do
    assert_difference('MasterService.count') do
      post master_services_url, params: { master_service: { service: @master_service.service } }
    end

    assert_redirected_to master_service_url(MasterService.last)
  end

  test "should show master_service" do
    get master_service_url(@master_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_service_url(@master_service)
    assert_response :success
  end

  test "should update master_service" do
    patch master_service_url(@master_service), params: { master_service: { service: @master_service.service } }
    assert_redirected_to master_service_url(@master_service)
  end

  test "should destroy master_service" do
    assert_difference('MasterService.count', -1) do
      delete master_service_url(@master_service)
    end

    assert_redirected_to master_services_url
  end
end
