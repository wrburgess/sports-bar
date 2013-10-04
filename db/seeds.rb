team1 = FactoryGirl.create(:team, name: "Georgia Bulldogs")
team2 = FactoryGirl.create(:team, name: "Jacksonville Jaguars")
team3 = FactoryGirl.create(:team, name: "Kansas Jayhawks")
team4 = FactoryGirl.create(:team, name: "Chicago Cubs")
teams = [team1, team2, team3, team4]

10.times do
  location = FactoryGirl.create(:location)
  location.teams << teams.sample
  location.teams << teams.sample

  review = FactoryGirl.create(:review, location: location)
end