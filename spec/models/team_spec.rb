require 'spec_helper'

describe Team do

  it 'has a valid factory' do
    FactoryGirl.create(:team).should be_valid
  end

  it 'is invalid without a name' do
    FactoryGirl.build(:team, name: nil).should_not be_valid
  end

  it { should have_many(:location_teams) }
  it { should have_many(:locations) }

end