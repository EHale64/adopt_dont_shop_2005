require 'rails_helper'

RSpec.describe 'As a visitor' do
    it "can see a specific shelter's info based on id" do
      shelter_1 = Shelter.create(name: "Rocky Mountain Rescue")
      shelter_2 = Shelter.create(name: "5208 Rescue")
      shelter_3 = Shelter.create(name: "Dumb Friends League")

      visit '/shelters/:id'

      expect(page).to have_content(shelter_1.name)
      expect(page).to have_content(shelter_1.address)
      expect(page).to have_content(shelter_1.city)
      expect(page).to have_content(shelter_1.state)
      expect(page).to have_content(shelter_1.zip)
    end
end
