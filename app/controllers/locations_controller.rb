class LocationsController < ApplicationController

  def index
    @locations = load_locations
  end

  def show
    @locations = load_locations

    @location = Location.where(city_slug: params[:city], name_slug: params[:name]).first 
  end

  private

  def load_locations
    if params[:city].present?
      Location.where(city_slug: params[:city])
    else
      Location.all
    end
  end
end