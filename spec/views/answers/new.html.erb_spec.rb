require 'rails_helper'

RSpec.describe "answers/new", :type => :view do
  let(:question) { FactoryGirl.create(:question) }
  before(:each) do
    assign(:answer, Answer.new())
  end

  xit "renders new answer form" do
    render template: "answers/new"

    assert_select "form[action=?][method=?]", question_answers_path(question), "post" do
      assert_select 'textarea[name=?]', 'answer[content]'
    end
  end
end
