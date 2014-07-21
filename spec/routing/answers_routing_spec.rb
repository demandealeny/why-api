require "rails_helper"

RSpec.describe AnswersController, :type => :routing do
  let(:question) { FactoryGirl.create(:question) }
  describe "routing" do

    xit "routes to #index" do
      expect(:get => question_answers_path(question), question_id: question.to_param).to route_to("answers#index")
    end

    xit "routes to #new" do
      expect(:get => "/answers/new").to route_to("answers#new")
    end

    xit "routes to #show" do
      expect(:get => "/answers/1").to route_to("answers#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/answers/1/edit").to route_to("answers#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/answers").to route_to("answers#create")
    end

    xit "routes to #update" do
      expect(:put => "/answers/1").to route_to("answers#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/answers/1").to route_to("answers#destroy", :id => "1")
    end

  end
end
