require 'rails_helper'

RSpec.describe 'New shelter' do
  describe "As a visitor" do
    describe 'When I visit the new shelter form by clicking a link on the index' do
      it "can create a new shelter" do
        visit '/shelters'

        click_link 'New Shelter'

        expect(current_path). to eq('/shelters/new')

        fill_in 'Name', with: 'Rescue Me'
        click_on 'Create_Shelter'

        expect(current_path).to eql("/shelters")
        expect(page).to have_content('Rescue Me')
      end
    end
  end
end
