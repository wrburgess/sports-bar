team1 = FactoryGirl.create(:team, name: "Georgia Bulldogs")
team2 = FactoryGirl.create(:team, name: "Jacksonville Jaguars")
team3 = FactoryGirl.create(:team, name: "Kansas Jayhawks")
team4 = FactoryGirl.create(:team, name: "Chicago Cubs")
teams = [team1, team2, team3, team4]

cities = [
  ["Chicago", "chicago"], 
  ["Orlando", "orlando"], 
  ["DC", "washington-dc"],
  ["St. Louis", "st-louis"],
  ["Jacksonville", "jacksonville"]
]

cities.each do |city|
  puts "Creating locations for #{city[0]}"

  10.times do |index|
    location = FactoryGirl.create(
      :location, 
      city: city[0], 
      city_slug: city[1],
      city_rating: index + 1,
    )
    location.teams << teams.sample
    location.teams << teams.sample

    review = FactoryGirl.create(:review, location: location)

    puts "  Creating location #{city[0]}: #{location.name}"
  end
end