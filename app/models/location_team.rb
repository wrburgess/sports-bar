class LocationTeam < ActiveRecord::Base

  validates_presence_of :location_id, :team_id

  belongs_to :location
  belongs_to :team

end