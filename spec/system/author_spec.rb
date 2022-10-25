# frozen_string_literal: true

require 'rails_helper'

describe 'author registrations, signing in and signing out' do
  let!(:author) { build(:author) }

  it "setups the author's account and changes account settings" do
    visit root_path

    click_link 'Register'
    fill_in 'author[first_name]', with: author.first_name
    fill_in 'author[last_name]', with: author.last_name
    fill_in 'author[email]', with: author.email
    fill_in 'author[password]', with: author.password
    fill_in 'author[password_confirmation]', with: author.password
    click_button 'Sign up'
    expect(page).to have_content 'You have signed up successfully.'

    click_button 'Sign Out'
    expect(page).to have_content 'You need to sign in or sign up before continuing.'

    click_link 'Sign In'
    fill_in 'author[email]', with: author.email
    fill_in 'author[password]', with: author.password
    click_button 'Log in'
    expect(page).to have_button 'Sign Out'

    click_link 'Account settings'
    fill_in 'author[first_name]', with: 'New author first name'
    fill_in 'author[last_name]', with: 'New author last name'
    fill_in 'author[email]', with: 'new_email@test.com'
    fill_in 'author[password]', with: 'new_password'
    fill_in 'author[password_confirmation]', with: 'new_password'
    fill_in 'author[current_password]', with: author.password
    click_button 'Update'
    expect(page).to have_content 'Your account has been updated successfully.'
  end
end
