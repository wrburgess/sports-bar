require 'spec_helper'

describe Location do

  it 'has a valid factory' do
    FactoryGirl.create(:location).should be_valid
  end

  it 'is invalid without a name' do
    FactoryGirl.build(:location, name: nil).should_not be_valid
  end

  it { should have_many(:flags) }
  it { should have_many(:images) }
  it { should have_many(:reviews) }
  it { should have_many(:users) }
  it { should have_many(:location_teams) }
  it { should have_many(:teams) }

end