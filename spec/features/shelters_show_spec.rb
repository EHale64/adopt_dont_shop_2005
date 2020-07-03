require 'rails_helper'

RSpec.describe 'As a visitor' do
    it "can see a specific shelter's info based on id" do
      shelter_1 = Shelter.create(name: "Rocky Mountain Rescue", address: "123 South Blvd", city: "Denver", state: "CO.", zip: 12345)
      shelter_2 = Shelter.create(name: "5208 Rescue")
      shelter_3 = Shelter.create(name: "Dumb Friends League")

      visit "/shelters/#{shelter_1.id}"

      expect(page).to have_content(shelter_1.name)
      expect(page).to have_content("Address: #{shelter_1.address}")
      expect(page).to have_content("City: #{shelter_1.city}")
      expect(page).to have_content("State: #{shelter_1.state}")
      expect(page).to have_content("Zip: #{shelter_1.zip}")
    end
end
