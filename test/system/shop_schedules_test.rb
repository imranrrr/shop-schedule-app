require "application_system_test_case"

class ShopSchedulesTest < ApplicationSystemTestCase
  setup do
    @shop_schedule = shop_schedules(:one)
  end

  test "visiting the index" do
    visit shop_schedules_url
    assert_selector "h1", text: "Shop schedules"
  end

  test "should create shop schedule" do
    visit shop_schedules_url
    click_on "New shop schedule"

    fill_in "Closing time", with: @shop_schedule.closing_time
    fill_in "Day", with: @shop_schedule.day
    fill_in "Day status", with: @shop_schedule.day_status
    fill_in "Half time", with: @shop_schedule.half_time
    fill_in "Open after half time", with: @shop_schedule.open_after_half_time
    fill_in "Opening time", with: @shop_schedule.opening_time
    click_on "Create Shop schedule"

    assert_text "Shop schedule was successfully created"
    click_on "Back"
  end

  test "should update Shop schedule" do
    visit shop_schedule_url(@shop_schedule)
    click_on "Edit this shop schedule", match: :first

    fill_in "Closing time", with: @shop_schedule.closing_time
    fill_in "Day", with: @shop_schedule.day
    fill_in "Day status", with: @shop_schedule.day_status
    fill_in "Half time", with: @shop_schedule.half_time
    fill_in "Open after half time", with: @shop_schedule.open_after_half_time
    fill_in "Opening time", with: @shop_schedule.opening_time
    click_on "Update Shop schedule"

    assert_text "Shop schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Shop schedule" do
    visit shop_schedule_url(@shop_schedule)
    click_on "Destroy this shop schedule", match: :first

    assert_text "Shop schedule was successfully destroyed"
  end
end
