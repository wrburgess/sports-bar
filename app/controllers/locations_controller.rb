class LocationsController < ApplicationController

  def home
    @locations = Location.order(:overall_rating).limit(10)
    @location = Location.order(:overall_rating).first

    render :index
  end

  # if param_city exists
  #   find city 
  # else
  #   redirect to Not Found

  # if param_name present
  #   find location
  #
  #   if location exists
  #     render view
  #   else
  #     redirect to Not Found
  #
  # else
  #   retrieve top-ranked location of city
  def index
    params[:city] || not_found
    @city = City.where("? = ANY (variations)", params[:city]).first || not_found
    redirect_to city_slug_path(city: @city.slug) if @city.slug != params[:city]

    @locations = Location.where(city: @city).order(:city_rating).limit(10)

    if params[:name].present?
      @location = Location.where(city: @city, name_slug: params[:name]).first || not_found
    else
      @location = Location.where(city: @city).order(:city_rating).first
    end
  end

end