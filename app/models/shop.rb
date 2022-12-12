class Shop < ApplicationRecord
    has_many :shop_schedules,  dependent: :destroy
end
