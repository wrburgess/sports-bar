class Location < ActiveRecord::Base

  validates_presence_of :name

  has_many :flags
  has_many :images
  
  has_many :reviews
  has_many :users, through: :reviews

  has_many :location_teams
  has_many :teams, through: :location_teams

end