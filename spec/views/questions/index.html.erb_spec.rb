require 'rails_helper'

RSpec.describe "questions/index", :type => :view do
  before(:each) do
    assign(:questions, [
      FactoryGirl.create(:question_with_answers),
      FactoryGirl.create(:question_with_answers)
    ])
  end

  it "renders a list of questions" do
    render
  end
end
