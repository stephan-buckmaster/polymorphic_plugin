FactoryGirl.define do

  factory :user do
    sequence(:name) { |i| "Regular User #{i}" }
  end

  factory :admin do
    sequence(:name) { |i| "Admin User #{i}" }
  end

end