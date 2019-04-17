require 'rails_helper'

describe 'As a User' do
  it 'can login as a user', :vcr do
    email = "justin@gmail.com"
    password = "123"

    visit root_path
    click_link "Login"

    expect(current_path).to eq(login_path)

    fill_in :email, with: email
    fill_in :password, with: password

    click_button "Login"
save_and_open_page
    expect(current_path).to eq(root_path)
    expect(page).to have_content("Welcome, #{email}")
    expect(page).to_not have_link("Login")
    expect(page).to have_link("Logout")
  end
end
