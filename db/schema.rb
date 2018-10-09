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

ActiveRecord::Schema.define(version: 2018_10_09_044842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catches", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "lure_id"
    t.bigint "location_id"
    t.bigint "weather_id"
    t.date "catch_date"
    t.time "catch_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_catches_on_location_id"
    t.index ["lure_id"], name: "index_catches_on_lure_id"
    t.index ["user_id"], name: "index_catches_on_user_id"
    t.index ["weather_id"], name: "index_catches_on_weather_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lures", force: :cascade do |t|
    t.string "type"
    t.string "color"
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weathers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "catches", "locations"
  add_foreign_key "catches", "lures"
  add_foreign_key "catches", "users"
  add_foreign_key "catches", "weathers"
end
