team1 = FactoryGirl.create(:team, name: "Georgia Bulldogs")
team2 = FactoryGirl.create(:team, name: "Jacksonville Jaguars")
team3 = FactoryGirl.create(:team, name: "Kansas Jayhawks")
team4 = FactoryGirl.create(:team, name: "Chicago Cubs")
teams = [team1, team2, team3, team4]
puts "Creating teams"

city1 = FactoryGirl.create(:city, name: "Chicago", state: "IL", slug: "chicago", variations: ["chicago", "chitown", "windy-city"])
city2 = FactoryGirl.create(:city, name: "Orlando", state: "FL", slug: "orlando", variations: ["orlando", "o-town"])
city3 = FactoryGirl.create(:city, name: "DC", state: "VA", slug: "dc", variations: ["dc", "washington-dc", "washington"])
city4 = FactoryGirl.create(:city, name: "St. Louis", state: "MO", slug: "st-louis", variations: ["st-louis", "stl", "stlouis"])
city5 = FactoryGirl.create(:city, name: "Jacksonville", state: "FL", slug: "jacksonville", variations: ["jacksonville", "jax", "jville"])
cities = [city1, city2, city3, city4, city5]
puts "Creating cities"

cities.each do |city|
  puts "Creating locations for #{city.name}"

  10.times do |index|
    location = FactoryGirl.create(
      :location, 
      city: city,
      city_rating: index + 1,
    )
    location.teams << teams.sample
    location.teams << teams.sample

    review = FactoryGirl.create(:review, location: location)

    puts "  Creating location #{city.name}: #{location.name}"
  end
end