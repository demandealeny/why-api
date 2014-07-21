# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_view_question do
    user
    question
  end
end
