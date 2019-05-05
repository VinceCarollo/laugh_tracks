# As a visitor
# When I visit `/comedians`
# Then I see an area at the top of the page called 'Statistics'
# In that 'Statistics' area, I see the following information:
# - the average age of all comedians on the page (if the page is filtered for specific comedians, the statistics should reflect the new group)
# - a unique list of cities for each comedian on the page

RSpec.describe 'As a visitor' do
  describe 'when visiting the comedians page' do
    describe 'there is a section at the top named statistics' do
      it 'contains all comedians statistics' do
        ray = Comedian.create!(name: 'Ray', age: 22, birthplace: 'New York')
        jon = Comedian.create!(name: 'Jon', age: 32, birthplace: 'Boston')
        jason = Comedian.create!(name: 'Jason', age: 27, birthplace: 'Kansas City')

        special_1 = Special.create!(name: 'Chew on This', runtime_mins: 22, comedian: ray)
        special_3 = Special.create!(name: 'All for the Money', runtime_mins: 42, comedian: jon)

        visit comedians_path

        within '.statistics' do
          expect(page).to have_content("Average Age:")
          expect(page).to have_content(27)
          expect(page).to have_content("Cities:")
          expect(page).to have_content("New York")
          expect(page).to have_content("Boston")
          expect(page).to have_content("Kansas City")
        end

      end

      it 'contains statistics of filtered comedians' do
        ray = Comedian.create!(name: 'Ray', age: 22, birthplace: 'New York')
        jon = Comedian.create!(name: 'Jon', age: 32, birthplace: 'Boston')
        jason = Comedian.create!(name: 'Jason', age: 22, birthplace: 'Kansas City')

        special_1 = Special.create!(name: 'Chew on This', runtime_mins: 22, comedian: ray)
        special_3 = Special.create!(name: 'All for the Money', runtime_mins: 42, comedian: jon)

        visit '/comedians?age=22'

        within '.statistics' do
          expect(page).to have_content(22)
          expect(page).to have_content("New York")
          expect(page).to_not have_content("Boston")
          expect(page).to have_content("Kansas City")
        end

      end

      it 'contains additional statistics - total special count and avg run length' do
        ray = Comedian.create!(name: 'Ray', age: 22, birthplace: 'New York')
        jon = Comedian.create!(name: 'Jon', age: 32, birthplace: 'Boston')

        special_1 = Special.create!(name: 'Chew on This', runtime_mins: 22, comedian: ray)
        special_2 = Special.create!(name: 'Forever Not Funny', runtime_mins: 41, comedian: ray)
        special_3 = Special.create!(name: 'All for the Money', runtime_mins: 42, comedian: jon)
        special_4 = Special.create!(name: 'Live and Livin', runtime_mins: 64, comedian: jon)

        visit comedians_path

        within '.statistics' do
          expect(page).to have_content('All Specials Count:')
          expect(page).to have_content(4)
          expect(page).to have_content('Average Special Run Length:')
          expect(page).to have_content(42.3)
        end

      end
    end
  end
end
