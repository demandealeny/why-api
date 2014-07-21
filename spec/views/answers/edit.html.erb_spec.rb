require 'rails_helper'

RSpec.describe "answers/edit", :type => :view do
  let(:question) { FactoryGirl.create(:question) }
  before(:each) do
    @answer = FactoryGirl.create(:answer)
  end

  xit "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", question_answers_path(question), "post" do
    end
  end
end
