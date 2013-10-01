# sports-bar

*sports bar review site*

## Assets

hosting: S3/Cloudfront  

location_logos  
location_images  
team_logos  
static_images  

## Tags
* New
* Institution
* Modern
* Chain
* Indie
* FanBase

## Search
* city
* zipcode
* name
* rating
* wifi
* tags

## Specs

### Models
* location
* team
* image
* review
* flag

### Controllers
* locations
* reviews
* admin_locations
* admin_review

## Views

home_page  
about_page  
support_page  
legal_page  

location_index  
location_show
  location_teams  
  location_reviews    

admin_location_index  
admin_location_edit  
  edit_location_teams  
  edit_location_images   
  location_review_index  
admin_location_show  

admin_team_index  
admin_team_edit

admin_review_index  
admin_review_edit  
admin_review_show  

## Controllers

static  

locations  
 
admin_locations  
admin_teams  
admin_reviews  

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

### Image
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

### Flag
  location_id
  user_id
  type (favorite, unlike, closed, check)
  comment
  
### User
  avatar
  first_name
  last_name