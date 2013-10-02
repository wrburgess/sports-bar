require 'spec_helper'

describe LocationsController do

  it 'should have an index' do
    get :index
    response.should be_success
  end

  it 'should have a show' do
    location = FactoryGirl.create :location
    get :show, id: location 
    response.should be_success
  end

end