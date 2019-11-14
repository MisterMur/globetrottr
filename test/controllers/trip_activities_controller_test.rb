require 'test_helper'

class TripActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_activity = trip_activities(:one)
  end

  test "should get index" do
    get trip_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_activity_url
    assert_response :success
  end

  test "should create trip_activity" do
    assert_difference('TripActivity.count') do
      post trip_activities_url, params: { trip_activity: {  } }
    end

    assert_redirected_to trip_activity_url(TripActivity.last)
  end

  test "should show trip_activity" do
    get trip_activity_url(@trip_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_activity_url(@trip_activity)
    assert_response :success
  end

  test "should update trip_activity" do
    patch trip_activity_url(@trip_activity), params: { trip_activity: {  } }
    assert_redirected_to trip_activity_url(@trip_activity)
  end

  test "should destroy trip_activity" do
    assert_difference('TripActivity.count', -1) do
      delete trip_activity_url(@trip_activity)
    end

    assert_redirected_to trip_activities_url
  end
end
