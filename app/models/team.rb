class Team < ActiveRecord::Base

  validates_presence_of :name

  has_many :location_teams
  has_many :locations, through: :location_teams

end