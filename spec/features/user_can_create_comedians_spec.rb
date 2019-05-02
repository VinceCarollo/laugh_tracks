require 'rails_helper'

# As a visitor
# When I visit `/comedians/new`
# Then I see a form to input a new comedian into the database
# Including fields for their name, age and city.
# When the form is successfully submitted and saved,
# Then I am redirected to `/comedians`
# And I see the new comedian's data on the page.

RSpec.describe 'As a visitor' do
  describe 'when they visit new comedians page it' do
    it 'can make a new comedian' do
      visit '/comedians/new'

      fill_in 'Name', with: "Ray"
      fill_in 'Age', with: 22
      fill_in 'Birthplace', with: 'NYC'

      click_on 'Create Comedian'

      expect(current_path).to eq("/comedians/#{Comedian.last.id}")
      expect(page).to have_content("Ray")
      expect(page).to have_content(22)
      expect(page).to have_content("NYC")
    end
  end
end
