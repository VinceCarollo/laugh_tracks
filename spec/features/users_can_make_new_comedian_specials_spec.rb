require 'rails_helper'

# As a visitor
# When I visit a comedian's show page
# And click a link to 'Add New Special'
# I am taken to '/comedians/#/specials/new' where '#' is the id of an existing comedian.
#
# I fill out the form for a new special
# And click 'Create Special'
#
# Then I am taken back to the comedian's show page
# And can see the new special that I have just created


RSpec.describe 'when visiting the a comedians individual page' do

  describe 'and clicking a link to add a new special' do

    before :each do
      @ray = Comedian.create!(name: 'Ray', age: 22, birthplace: 'New York', image_url: 'https://www.santacruzgalapagoscruise.com/wp-content/uploads/2017/06/marbleray2-whatsthatfish.com_.jpg')
      @jon = Comedian.create!(name: 'Jon', age: 32, birthplace: 'Boston', image_url: 'https://images-i.jpimedia.uk/imagefetch/c_fill,f_auto,q_auto:eco,w_1200/https://inews.co.uk/wp-content/uploads/2019/04/got-cast26.jpg')
      @special_1 = Special.create!(name: 'Chew on This', runtime_mins: 22, comedian: @ray)
      @special_2 = Special.create!(name: 'Forever Not Funny', runtime_mins: 41, comedian: @ray)
      @special_3 = Special.create!(name: 'All for the Money', runtime_mins: 42, comedian: @jon)
      @special_4 = Special.create!(name: 'Live and Livin', runtime_mins: 64, comedian: @jon)
    end

    it 'can create a new special for that comedian' do
      visit comedians_path

      click_link @ray.name

      click_link "Add Special"

      expect(current_path).to eq(new_comedian_special_path(@ray))

      fill_in :special_name, with: "New Special Name"
      fill_in :special_runtime_mins, with: 33

      click_on "Create Special"

      expect(current_path).to eq(comedian_path(@ray))
      expect(Special.last.name).to eq("New Special Name")
      expect(Special.last.comedian).to eq(@ray)
      expect(page).to have_content(Special.last.name)
      expect(page).to have_content(Special.last.runtime_mins)
    end

  end

end
