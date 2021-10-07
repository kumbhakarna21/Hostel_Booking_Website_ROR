require "application_system_test_case"

class MasterServicesTest < ApplicationSystemTestCase
  setup do
    @master_service = master_services(:one)
  end

  test "visiting the index" do
    visit master_services_url
    assert_selector "h1", text: "Master Services"
  end

  test "creating a Master service" do
    visit master_services_url
    click_on "New Master Service"

    fill_in "Service", with: @master_service.service
    click_on "Create Master service"

    assert_text "Master service was successfully created"
    click_on "Back"
  end

  test "updating a Master service" do
    visit master_services_url
    click_on "Edit", match: :first

    fill_in "Service", with: @master_service.service
    click_on "Update Master service"

    assert_text "Master service was successfully updated"
    click_on "Back"
  end

  test "destroying a Master service" do
    visit master_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Master service was successfully destroyed"
  end
end
