class ShopSchedule < ApplicationRecord
    belongs_to :shop, optional: true

    DAYS = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' ]
    DAY_STATUS = ['Working Day', 'Closed']

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
        "Working Day" => "Working Day",
        "Closed" => "closed"
    }
end
