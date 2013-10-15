class LocationsController < ApplicationController

  def home
    @locations = Location.limit(10).order(:overall_rating)
  end

  def index
    @locations = Location.where(city_slug: params[:city]).order(:city_rating).limit(10)


    if params[:name].present?
      @location = Location.where(city_slug: params[:city], name_slug: params[:name]).first
    else
      @location = Location.where(city_slug: params[:city]).order(:city_rating).first
    end
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