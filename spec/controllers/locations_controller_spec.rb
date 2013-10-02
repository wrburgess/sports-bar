require 'spec_helper'

describe LocationsController do

  it 'should have an index' do
    get :index
    response.should be_success
  end

  xit 'should have a show' do
    get :show 
    response.should be_success
  end

end