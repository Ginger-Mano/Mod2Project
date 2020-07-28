# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_27_205917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurant_reservations", force: :cascade do |t|
    t.integer "party_size"
    t.string "restaurant_name"
    t.string "date"
    t.string "time"
    t.bigint "user_id", null: false
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_restaurant_reservations_on_restaurant_id"
    t.index ["user_id"], name: "index_restaurant_reservations_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "address"
    t.string "url"
    t.string "review"
    t.integer "avg_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wellness_centers", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "address"
    t.string "url"
    t.string "review"
    t.integer "avg_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wellness_reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "wellness_center_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_wellness_reservations_on_user_id"
    t.index ["wellness_center_id"], name: "index_wellness_reservations_on_wellness_center_id"
  end

  add_foreign_key "restaurant_reservations", "restaurants"
  add_foreign_key "restaurant_reservations", "users"
  add_foreign_key "wellness_reservations", "users"
  add_foreign_key "wellness_reservations", "wellness_centers"
end
