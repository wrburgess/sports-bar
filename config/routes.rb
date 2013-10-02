SportsBar::Application.routes.draw do

  root "static#home"

  get "about" => "static#about"
  get "legal" => "static#legal"
  get "support" => "static#support"

  resources :locations
end
