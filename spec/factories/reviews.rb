FactoryGirl.define do
  factory :review do
    location
    comment { Faker::Lorem.sentence(14) }
    tv_rating { rand(1..5) }
    service_rating { rand(1..5) }
    food_rating { rand(1..5) }
    drink_rating { rand(1..5) }
    seating_rating { rand(1..5) }
  end
end