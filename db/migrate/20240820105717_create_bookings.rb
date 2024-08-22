class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :time_travel, null: false, foreign_key: true
      t.integer :price
      t.string :period
      t.boolean :status
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
