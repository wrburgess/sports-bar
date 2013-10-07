require 'spec_helper'

describe LocationsController do

  let(:location1) { FactoryGirl.create(:location) }
  let(:location2) { FactoryGirl.create(:location) }

  describe "#index" do
    it 'should have an index' do
      location1
      location2
      locations = Location.all
      get :index, city: locations.first.city_slug
      response.should be_success
    end

    it "assigns the requested players to @players" do
      location1
      location2
      locations = Location.all
      get :index, city: locations.first.city_slug
      expect(assigns(locations)).to eq @locations
    end
  end

  describe "#show" do
    it 'should have a show' do
      location1
      get :show, city: location1.city_slug, name: location1.name_slug  
      response.should be_success
    end

    it "renders the show view" do
      location1
      get :show, city: location1.city_slug, name: location1.name_slug  
      response.should render_template :show
    end

    it "assigns the requested location to @location" do
      location1
      get :show, city: location1.city_slug, name: location1.name_slug    
      expect(assigns(location1)).to eq @location
    end
  end

end