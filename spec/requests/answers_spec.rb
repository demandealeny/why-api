require 'rails_helper'

RSpec.describe "Answers", :type => :request do
  let(:question) { FactoryGirl.create(:question) }
  describe "GET /answers" do
    it "works! (now write some real specs)" do
      get question_answers_path(question)
      expect(response.status).to be(200)
    end
  end
end
