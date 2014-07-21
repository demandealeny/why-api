# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "dodo#{n}@gmail.com"}
    password "secret123"
  end
end
