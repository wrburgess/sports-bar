class LocationsController < ApplicationController

  def home
    @locations = Location.limit(10).order(:overall_rating)
  end

  def index
    @locations = Location.where(city_slug: params[:city]).order(:city_rating).limit(10)

    @location = Location.where(city_slug: params[:city]).order(:city_rating).first
  end

  def show
    @location = Location.where(city_slug: params[:city], name_slug: params[:name]).first 
  end

  private

  def load_locations
    if params[:city].present?
      @locations = Location.where(city_slug: params[:city])
    else
      @locations = Location.all
    end
  end
end