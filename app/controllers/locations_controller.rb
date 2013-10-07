class LocationsController < ApplicationController

  def index
    if params[:city].present?
      @locations = Location.where(city_slug: params[:city])
    else
      @locations = Location.all
    end
  end

  def show
    @location = Location.where(city_slug: params[:city], name_slug: params[:name]) 
  end

end