class CreateShopSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_schedules do |t|
      t.string :day
      t.time :opening_time
      t.time :half_time
      t.time :open_after_half_time
      t.time :closing_time
      t.string :day_status, default: "woking_day"
      t.references :shop

      t.timestamps
    end
  end
end
