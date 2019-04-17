require 'rails_helper'

describe "on the favorites page" do
  it "can delete a favorite dog", :vcr do
    visit '/'

    fill_in :search, with: "Labrador"
    click_button 'Search'

    within(first(".search_results")) do
      click_on 'Favorite'
    end

    within(all(".dog").last) do
      click_on 'Delete'
    end

    expect(current_path).to eq(favorites_path)
  end
end
