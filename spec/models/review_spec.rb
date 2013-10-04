require 'spec_helper'

describe Review do

  it "has a valid factory" do
    FactoryGirl.create(:review).should be_valid
  end

  it "is invalid without a location" do
    FactoryGirl.build(:review, location: nil).should_not be_valid
  end

  it { should belong_to(:location) }

end