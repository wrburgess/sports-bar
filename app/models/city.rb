class City < ActiveRecord::Base

  validates_presence_of :name, :slug, :variations, :state

  has_many :locations

end