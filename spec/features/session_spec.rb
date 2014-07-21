require 'rails_helper'

context 'sign in success' do
  subject { FactoryGirl.create(:user)}
  before do
    visit new_user_session_path
    fill_in 'user_email', with: subject.email
    fill_in 'user_password', with: subject.password
    click_button 'Sign in'
  end

  it 'display a welcome message' do
    expect(page).to have_content('Signed in successfully')
  end
  it 'display a goodbye message' do
    page.driver.submit :delete, destroy_user_session_path, {}
    expect(page).to have_content('Signed out successfully')
  end
end

context 'sign up success' do
  subject { FactoryGirl.build(:user)}
  before do
    visit new_user_registration_path
    fill_in 'user_email', with: subject.email
    fill_in 'user_password', with: subject.password
    fill_in 'user_password_confirmation', with: subject.password
    click_button 'Sign up'
  end

  it 'display a welcome message' do
    expect(page).to have_content('You have signed up successfully')
  end
end
