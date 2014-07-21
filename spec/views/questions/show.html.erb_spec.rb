require 'rails_helper'

RSpec.describe "questions/show", :type => :view do
  before(:each) do
    @question = FactoryGirl.create(:question_with_answers)
  end

  it "renders attributes in <p>" do
    render
  end
end
