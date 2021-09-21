require "test_helper"

class RoomDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_detail = room_details(:one)
  end

  test "should get index" do
    get room_details_url
    assert_response :success
  end

  test "should get new" do
    get new_room_detail_url
    assert_response :success
  end

  test "should create room_detail" do
    assert_difference('RoomDetail.count') do
      post room_details_url, params: { room_detail: { bed_type: @room_detail.bed_type, hotel_detail_id: @room_detail.hotel_detail_id, price_per: @room_detail.price_per, room_size: @room_detail.room_size, room_type: @room_detail.room_type, room_view: @room_detail.room_view } }
    end

    assert_redirected_to room_detail_url(RoomDetail.last)
  end

  test "should show room_detail" do
    get room_detail_url(@room_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_detail_url(@room_detail)
    assert_response :success
  end

  test "should update room_detail" do
    patch room_detail_url(@room_detail), params: { room_detail: { bed_type: @room_detail.bed_type, hotel_detail_id: @room_detail.hotel_detail_id, price_per: @room_detail.price_per, room_size: @room_detail.room_size, room_type: @room_detail.room_type, room_view: @room_detail.room_view } }
    assert_redirected_to room_detail_url(@room_detail)
  end

  test "should destroy room_detail" do
    assert_difference('RoomDetail.count', -1) do
      delete room_detail_url(@room_detail)
    end

    assert_redirected_to room_details_url
  end
end
