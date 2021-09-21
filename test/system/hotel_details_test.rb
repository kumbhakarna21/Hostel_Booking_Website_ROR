require "application_system_test_case"

class HotelDetailsTest < ApplicationSystemTestCase
  setup do
    @hotel_detail = hotel_details(:one)
  end

  test "visiting the index" do
    visit hotel_details_url
    assert_selector "h1", text: "Hotel Details"
  end

  test "creating a Hotel detail" do
    visit hotel_details_url
    click_on "New Hotel Detail"

    fill_in "Address", with: @hotel_detail.address
    fill_in "Hotel name", with: @hotel_detail.hotel_name
    click_on "Create Hotel detail"

    assert_text "Hotel detail was successfully created"
    click_on "Back"
  end

  test "updating a Hotel detail" do
    visit hotel_details_url
    click_on "Edit", match: :first

    fill_in "Address", with: @hotel_detail.address
    fill_in "Hotel name", with: @hotel_detail.hotel_name
    click_on "Update Hotel detail"

    assert_text "Hotel detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Hotel detail" do
    visit hotel_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hotel detail was successfully destroyed"
  end
end
