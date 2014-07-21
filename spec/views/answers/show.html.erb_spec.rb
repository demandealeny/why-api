require 'rails_helper'

RSpec.describe "answers/show", :type => :view do
  before(:each) do
    @answer = FactoryGirl.create(:answer)
  end

  xit "renders attributes in <p>" do
    render
  end
end
