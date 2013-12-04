FactoryGirl.define do
  factory :city do
    name { "DC" }
    slug { "dc" }
    variations { ["washington-dc", "dc", "d.c.", "washington", "washington d.c."] }
    state { "VA" }
  end
end