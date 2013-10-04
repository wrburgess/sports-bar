require 'spec_helper'

describe LocationTeam do

  it "has a valid factory" do
    FactoryGirl.create(:location_team).should be_valid
  end

  it "is invalid without a location" do
    FactoryGirl.build(:location_team, location: nil).should_not be_valid
  end

  it "is invalid without a team" do
    FactoryGirl.build(:location_team, team: nil).should_not be_valid
  end

  it { should belong_to(:team) }
  it { should belong_to(:location) }

end