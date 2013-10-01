# sports-bar

*sports bar review site*

## Models

### Location
  name
  address_1
  address_2
  city
  state
  zipcode
  logo
  provides_game_sound
  provides_wifi
  tv_provider
  rating
  occupancy
  smoking_allowed
  sun_hours
  mon_hours
  tues_hours
  wed_hours
  thu_hours
  fri_hours
  sat_hours
  website_url
   
### LocationTeam
  location_id
  team_id

### LocationImage
  location_id
  name

### Review
  location_id
  user_id
  comment (140 char)
  tv_quality (1-5)
  service (1-5)
  food_quality (1-5)
  drink_selection (1-5)
  table_availability (1-5)
  
### User
  avatar
  first_name
  last_name