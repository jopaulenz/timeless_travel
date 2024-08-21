class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :time_travel, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :user_name

      t.timestamps
    end
  end
end
