require 'rails_helper'

describe "on the root page" do
  it "can see a list of favorite dogs", :vcr do
    visit '/favorites'

    expect(current_path).to eq(favorites_path)
    expect(page).to have_css(".dog", count: 6)

    within(first(".dog")) do
      expect(page).to have_content("Labrador")
      expect(page.find('#dog_image')['src']).to have_content 'https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg'
    end
  end
end
