class Review < ActiveRecord::Base

  validates_presence_of :location_id
  belongs_to :location

end