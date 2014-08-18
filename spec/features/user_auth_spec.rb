require 'rails_helper'

feature 'user auth' do
  scenario 'user can register' do
    visit "/"
    click_on "Sign Up"

    fill_in "Username", :with => "taco"
    fill_in "Email", :with => "taco@taco.com"
    fill_in "Password", :with => "taco"

    click_on "Sign Up"

    expect(page).to have_content "Welcome taco"

    click_on "Sign Out"

    expect(page).to_not have_content "Welcome taco"

    click_on "Sign In"

    fill_in "Email", :with => "taco@taco.com"
    fill_in "Password", :with => "taco"

    cick_on "Sign In"

    expect(page).to have_content "Welcome taco"
  end
end