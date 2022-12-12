json.extract! shop_schedule, :id, :day, :opening_time, :half_time, :open_after_half_time, :closing_time, :day_status, :created_at, :updated_at
json.url shop_schedule_url(shop_schedule, format: :json)
