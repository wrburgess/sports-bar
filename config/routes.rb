SportsBar::Application.routes.draw do

  root "locations#home"
  get "about" => "static#about"
  get "legal" => "static#legal"
  get "support" => "static#support"
  get ":city" => "locations#index", as: :city_slug
  get ":city/:name" => "locations#index", as: :location_slug
  
end
