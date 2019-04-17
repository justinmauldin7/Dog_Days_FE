require 'rails_helper'

describe "on the root page" do
  it "can create a favorite dog", :vcr do
    visit '/'

    fill_in :search, with: "Labrador"
    click_button 'Search'

    within(first(".search_results")) do
      click_on 'Favorite'
    end

    expect(current_path).to eq(favorites_path)

    within(all(".dog").last) do
      expect(page).to have_content("Labrador")
    end
  end
end
