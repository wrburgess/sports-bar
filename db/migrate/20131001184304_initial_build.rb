class InitialBuild < ActiveRecord::Migration
  def change

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

    create_table "location_teams", force: true do |t|
      t.integer  "location_id"
      t.integer  "team_id"
      t.datetime "created_at",          null: false
      t.datetime "updated_at",          null: false
    end

    create_table "teams", force: true do |t|
      t.string   "name",                null: false
      t.datetime "created_at",          null: false
      t.datetime "updated_at",          null: false
    end

    create_table "location_images", force: true do |t|
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

  end
end