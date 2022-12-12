class ShopSchedule < ApplicationRecord
    belongs_to :shop, optional: true

    enum day: {
    "Monday" => "monday", 
    "Tuesday" => "tuesday", 
    "Wednesday" => "wednesday", 
    "Thursday" => "thursday", 
    "Friday" => "friday", 
    "Saturday" => "saturday",
    "Sunday" => "sunday"
    }

    enum day_status: {
        "Working Day" => "working_day",
        "Closed" => "closed"
    }
end
