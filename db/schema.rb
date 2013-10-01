# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131001184304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "location_images", force: true do |t|
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "location_teams", force: true do |t|
    t.integer  "location_id"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "logo_url"
    t.boolean  "provides_game_sound"
    t.string   "provides_wifi"
    t.string   "tv_provider"
    t.integer  "rating"
    t.integer  "occupancy"
    t.boolean  "smoking_allowed"
    t.boolean  "sun_hours"
    t.boolean  "mon_hours"
    t.boolean  "tues_hours"
    t.boolean  "wed_hours"
    t.boolean  "thu_hours"
    t.boolean  "fri_hours"
    t.boolean  "sat_hours"
    t.string   "website_url"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "reviews", force: true do |t|
    t.integer  "location_id"
    t.integer  "user_id"
    t.string   "comment"
    t.integer  "tv_rating"
    t.integer  "service_rating"
    t.integer  "food_rating"
    t.integer  "drink_rating"
    t.integer  "seating_rating"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "teams", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
