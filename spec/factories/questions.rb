# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do

    title "Je suis une question super interessante"
    content "Et mon content je n'ose pas en parler"
    view 0
    interest 0
    active true
    user
    factory :question_with_answers do

      ignore do
        answers_count 3
      end

      after(:create) do |question, evaluator|
        FactoryGirl.create_list(:answer, evaluator.answers_count, question: question)
      end
    end
    factory :bad_question do
      title 'sdsd'
    end
  end
end
