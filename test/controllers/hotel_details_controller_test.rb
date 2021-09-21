require "test_helper"

class HotelDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hotel_detail = hotel_details(:one)
  end

  test "should get index" do
    get hotel_details_url
    assert_response :success
  end

  test "should get new" do
    get new_hotel_detail_url
    assert_response :success
  end

  test "should create hotel_detail" do
    assert_difference('HotelDetail.count') do
      post hotel_details_url, params: { hotel_detail: { address: @hotel_detail.address, hotel_name: @hotel_detail.hotel_name } }
    end

    assert_redirected_to hotel_detail_url(HotelDetail.last)
  end

  test "should show hotel_detail" do
    get hotel_detail_url(@hotel_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_hotel_detail_url(@hotel_detail)
    assert_response :success
  end

  test "should update hotel_detail" do
    patch hotel_detail_url(@hotel_detail), params: { hotel_detail: { address: @hotel_detail.address, hotel_name: @hotel_detail.hotel_name } }
    assert_redirected_to hotel_detail_url(@hotel_detail)
  end

  test "should destroy hotel_detail" do
    assert_difference('HotelDetail.count', -1) do
      delete hotel_detail_url(@hotel_detail)
    end

    assert_redirected_to hotel_details_url
  end
end
