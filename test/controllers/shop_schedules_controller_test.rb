require "test_helper"

class ShopSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_schedule = shop_schedules(:one)
  end

  test "should get index" do
    get shop_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_schedule_url
    assert_response :success
  end

  test "should create shop_schedule" do
    assert_difference("ShopSchedule.count") do
      post shop_schedules_url, params: { shop_schedule: { closing_time: @shop_schedule.closing_time, day: @shop_schedule.day, day_status: @shop_schedule.day_status, half_time: @shop_schedule.half_time, open_after_half_time: @shop_schedule.open_after_half_time, opening_time: @shop_schedule.opening_time } }
    end

    assert_redirected_to shop_schedule_url(ShopSchedule.last)
  end

  test "should show shop_schedule" do
    get shop_schedule_url(@shop_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_schedule_url(@shop_schedule)
    assert_response :success
  end

  test "should update shop_schedule" do
    patch shop_schedule_url(@shop_schedule), params: { shop_schedule: { closing_time: @shop_schedule.closing_time, day: @shop_schedule.day, day_status: @shop_schedule.day_status, half_time: @shop_schedule.half_time, open_after_half_time: @shop_schedule.open_after_half_time, opening_time: @shop_schedule.opening_time } }
    assert_redirected_to shop_schedule_url(@shop_schedule)
  end

  test "should destroy shop_schedule" do
    assert_difference("ShopSchedule.count", -1) do
      delete shop_schedule_url(@shop_schedule)
    end

    assert_redirected_to shop_schedules_url
  end
end
