require 'rails_helper'

feature "user can search for house members" do
  scenario "user submits valid state name" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_css(".dog", count: 3)

    within(first(".dog")) do
      expect(page).to have_content("Bulldog")
    end
  end
end
