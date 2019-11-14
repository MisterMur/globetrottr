require "application_system_test_case"

class TripActivitiesTest < ApplicationSystemTestCase
  setup do
    @trip_activity = trip_activities(:one)
  end

  test "visiting the index" do
    visit trip_activities_url
    assert_selector "h1", text: "Trip Activities"
  end

  test "creating a Trip activity" do
    visit trip_activities_url
    click_on "New Trip Activity"

    click_on "Create Trip activity"

    assert_text "Trip activity was successfully created"
    click_on "Back"
  end

  test "updating a Trip activity" do
    visit trip_activities_url
    click_on "Edit", match: :first

    click_on "Update Trip activity"

    assert_text "Trip activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip activity" do
    visit trip_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip activity was successfully destroyed"
  end
end
