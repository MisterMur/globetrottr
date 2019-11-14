# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_15_152609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "rating"
    t.integer "price_level"
    t.string "photo_url"
    t.integer "destination_id"
    t.string "search"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "state_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
  end

  create_table "trip_activities", force: :cascade do |t|
    t.bigint "trip_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date"
    t.index ["activity_id"], name: "index_trip_activities_on_activity_id"
    t.index ["trip_id"], name: "index_trip_activities_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "destination_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "trip_name"
    t.index ["destination_id"], name: "index_trips_on_destination_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthdate"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "private"
  end

  add_foreign_key "trip_activities", "activities"
  add_foreign_key "trip_activities", "trips"
  add_foreign_key "trips", "destinations"
  add_foreign_key "trips", "users"
end
