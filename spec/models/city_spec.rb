require 'spec_helper'

describe City do

  it 'has a valid factory' do
    FactoryGirl.create(:city).should be_valid
  end

  it 'is invalid without a name' do
    FactoryGirl.build(:city, name: nil).should_not be_valid
  end

  it 'is invalid without variations' do
    FactoryGirl.build(:city, variations: nil).should_not be_valid
  end

  it 'is invalid without a state' do
    FactoryGirl.build(:city, state: nil).should_not be_valid
  end

  it { should have_many(:locations) }

end