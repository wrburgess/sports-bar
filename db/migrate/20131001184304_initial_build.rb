class InitialBuild < ActiveRecord::Migration
  def change

    create_table "locations", force: true do |t|
      t.integer  "city_id"
      t.string   "name"
      t.string   "name_slug"
      t.string   "address_1"
      t.string   "address_2"
      t.string   "neighborhood"
      t.string   "state"
      t.string   "zipcode"
      t.string   "logo_url"
      t.integer  "year_founded"
      t.boolean  "provides_game_sound"
      t.boolean  "provides_wifi"
      t.boolean  "provides_power"
      t.string   "tv_provider"
      t.integer  "city_rating"
      t.integer  "overall_rating"
      t.integer  "occupancy"
      t.boolean  "smoking_allowed"
      t.boolean  "staff_wear_colors"
      t.integer  "tv_quantity"
      t.integer  "high_definition"
      t.integer  "sun_open_hour"
      t.integer  "mon_open_hour"
      t.integer  "tue_open_hour"
      t.integer  "wed_open_hour"
      t.integer  "thu_open_hour"
      t.integer  "fri_open_hour"
      t.integer  "sat_open_hour"
      t.integer  "sun_close_hour"
      t.integer  "mon_close_hour"
      t.integer  "tue_close_hour"
      t.integer  "wed_close_hour"
      t.integer  "thu_close_hour"
      t.integer  "fri_close_hour"
      t.integer  "sat_close_hour"
      t.string   "editor_note"
      t.string   "website_url"
      t.string   "email_address"
      t.datetime "created_at",          null: false
      t.datetime "updated_at",          null: false
    end  

    create_table "location_teams", force: true do |t|
      t.integer  "location_id"
      t.integer  "team_id"
      t.datetime "created_at",          null: false
      t.datetime "updated_at",          null: false
    end

    create_table "cities", force: true do |t|
      t.string "name"
      t.string "slug"
      t.string "variations", array: true
      t.string "state"
    end

    create_table "teams", force: true do |t|
      t.string   "name",                null: false
      t.datetime "created_at",          null: false
      t.datetime "updated_at",          null: false
    end

    create_table "images", force: true do |t|
      t.integer  "location_id"
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
      t.datetime "created_at",          null: false
      t.datetime "updated_at",          null: false
    end

    create_table "flags", force: true do |t|
      t.integer  "location_id"
      t.integer  "user_id"
      t.string   "type"
      t.string   "comment"
      t.datetime "created_at",          null: false
      t.datetime "updated_at",          null: false
    end

  end
end