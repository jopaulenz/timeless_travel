# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_21_123642) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "time_travel_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["time_travel_id"], name: "index_bookings_on_time_travel_id"
  end

  create_table "time_travels", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "price_per_day"
    t.bigint "time_period_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["time_period_id"], name: "index_time_travels_on_time_period_id"
  end

  add_foreign_key "bookings", "time_travels"
  add_foreign_key "famous_people", "time_periods"
  add_foreign_key "time_travels", "time_periods"
end
