require 'test_helper'

class SegmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @segment = segments(:one)
  end

  test "should get index" do
    get segments_url, as: :json
    assert_response :success
  end

  test "should create segment" do
    assert_difference('Segment.count') do
      post segments_url, params: { segment: { days_duration: @segment.days_duration, days_suffix: @segment.days_suffix, description: @segment.description, name: @segment.name, started_at: @segment.started_at } }, as: :json
    end

    assert_response 201
  end

  test "should show segment" do
    get segment_url(@segment), as: :json
    assert_response :success
  end

  test "should update segment" do
    patch segment_url(@segment), params: { segment: { days_duration: @segment.days_duration, days_suffix: @segment.days_suffix, description: @segment.description, name: @segment.name, started_at: @segment.started_at } }, as: :json
    assert_response 200
  end

  test "should destroy segment" do
    assert_difference('Segment.count', -1) do
      delete segment_url(@segment), as: :json
    end

    assert_response 204
  end
end
