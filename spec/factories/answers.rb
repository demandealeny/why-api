# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do

    content "Je suis une reponse cool"
    interest 0
    question
    user
    factory :answer_build do
      content 'If the customization at the views level is not enough, you can customize each controller by following these steps'
    end
    factory :bad_answer do
      content 'ss'
    end
  end
end
