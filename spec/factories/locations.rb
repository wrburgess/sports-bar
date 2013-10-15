FactoryGirl.define do
  factory :location do
    name { Faker::Company.name }
    name_slug { "#{name}".parameterize }
    address_1 "3252 N Clifton Ave 3W"
    city "Chicago"
    city_slug "chicago"
    neighborhood "Lakeview"
    state "Illinois"
    zipcode 60657
    logo_url "http://placehold.it/200X200"
    year_founded { rand(1950..2012) }
    provides_game_sound true
    provides_wifi true
    provides_power false
    tv_provider "DirecTV"
    city_rating { rand(1..10) }
    overall_rating { rand(1..100) }
    occupancy { rand(25..200) }
    smoking_allowed false
    staff_wear_colors true
    tv_quantity { rand(5..20) }
    high_definition true
    sun_open_hour 11
    mon_open_hour 17
    tue_open_hour 17
    wed_open_hour 12
    thu_open_hour 12
    fri_open_hour 12
    sat_open_hour 11
    sun_close_hour 24
    mon_close_hour 24
    tue_close_hour 24
    wed_close_hour 2
    thu_close_hour 2
    fri_close_hour 4
    sat_close_hour 4 
    editor_note { Faker::Lorem.sentence(10) }
    website_url { Faker::Internet.url }
  end
end