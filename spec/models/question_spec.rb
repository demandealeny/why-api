require 'rails_helper'

RSpec.describe Question, :type => :model do
  subject { FactoryGirl.create(:question) }
  let(:question_with_answers) {FactoryGirl.create(:question_with_answers)}
  it 'Should be valid' do
    expect(subject).to be_valid
  end

  it 'Should has answers' do
    expect(question_with_answers.answers.size).to eq(3)
  end

  it 'Should update interest' do
    expect{subject.update_interest(1)}.to change { subject.interest }
        .from(0).to(1)
  end
end
