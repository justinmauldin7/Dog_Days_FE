require 'rails_helper'

describe "on the root page" do
  it "can search a dog breed & display results", :vcr do
    visit '/'

    fill_in :search, with: "Labrador"
    click_button 'Search'

    expect(page).to have_css(".search_results", count: 6)
  end
end
