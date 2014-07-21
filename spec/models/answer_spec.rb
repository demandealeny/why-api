require 'rails_helper'

RSpec.describe Answer, :type => :model do
  subject { FactoryGirl.create(:answer) }
  it 'Should be valid' do
    expect(subject).to be_valid
  end

  it 'Should update interest' do
    expect{subject.update_interest(1)}.to change { subject.interest }
        .from(0).to(1)
  end

  it 'Should be an instance of' do
    expect(subject.question).to be_an_instance_of(Question)
  end
end
