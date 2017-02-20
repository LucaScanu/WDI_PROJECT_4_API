require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url, as: :json
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { available_spaces: @event.available_spaces, category_id: @event.category_id, date: @event.date, description: @event.description, house_rules: @event.house_rules, latitude: @event.latitude, location: @event.location, longitude: @event.longitude, maximum_guests: @event.maximum_guests, name: @event.name, price_per_head: @event.price_per_head, user_id: @event.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show event" do
    get event_url(@event), as: :json
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { available_spaces: @event.available_spaces, category_id: @event.category_id, date: @event.date, description: @event.description, house_rules: @event.house_rules, latitude: @event.latitude, location: @event.location, longitude: @event.longitude, maximum_guests: @event.maximum_guests, name: @event.name, price_per_head: @event.price_per_head, user_id: @event.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event), as: :json
    end

    assert_response 204
  end
end
