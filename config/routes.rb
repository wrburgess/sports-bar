SportsBar::Application.routes.draw do

  root "static#home"
  get "about" => "static#about"
  get "legal" => "static#legal"
  get "support" => "static#support"

  get ":city" => "locations#index", as: :city_slug
  get ":city/:name" => "locations#show", as: :location_slug
  
end
