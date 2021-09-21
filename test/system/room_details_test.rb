require "application_system_test_case"

class RoomDetailsTest < ApplicationSystemTestCase
  setup do
    @room_detail = room_details(:one)
  end

  test "visiting the index" do
    visit room_details_url
    assert_selector "h1", text: "Room Details"
  end

  test "creating a Room detail" do
    visit room_details_url
    click_on "New Room Detail"

    fill_in "Bed type", with: @room_detail.bed_type
    fill_in "Hotel detail", with: @room_detail.hotel_detail_id
    fill_in "Price per", with: @room_detail.price_per
    fill_in "Room size", with: @room_detail.room_size
    fill_in "Room type", with: @room_detail.room_type
    fill_in "Room view", with: @room_detail.room_view
    click_on "Create Room detail"

    assert_text "Room detail was successfully created"
    click_on "Back"
  end

  test "updating a Room detail" do
    visit room_details_url
    click_on "Edit", match: :first

    fill_in "Bed type", with: @room_detail.bed_type
    fill_in "Hotel detail", with: @room_detail.hotel_detail_id
    fill_in "Price per", with: @room_detail.price_per
    fill_in "Room size", with: @room_detail.room_size
    fill_in "Room type", with: @room_detail.room_type
    fill_in "Room view", with: @room_detail.room_view
    click_on "Update Room detail"

    assert_text "Room detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Room detail" do
    visit room_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room detail was successfully destroyed"
  end
end
