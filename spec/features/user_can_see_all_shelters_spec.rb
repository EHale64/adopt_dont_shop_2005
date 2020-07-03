require 'rails_helper'

RSpec.describe "shelter index page", type: :feature do
  it "can see all shelter's names" do
    shelter_1 = Shelter.create(name: "Rocky Mountain Rescue")
    shelter_2 = Shelter.create(name: "5208 Rescue")
    shelter_3 = Shelter.create(name: "Dumb Friends League")

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content(shelter_3.name)
  end
end
