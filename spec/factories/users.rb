FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "text#{n}@example.com"} 
    password "supersecurepassword"
  end
end
