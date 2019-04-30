require 'rails_helper'

describe 'when user goes to comedian page' do
    it 'shows all comedian attributes' do
        ray = Comedian.create!(name: 'Ray', age: 22, birthplace: 'New York')
        jon = Comedian.create!(name: 'Jon', age: 32, birthplace: 'Boston')
        special_1 = Special.create!(name: 'Chew on This', runtime_mins: 22, commedian_id: ray.id)
        special_2 = Special.create!(name: 'Forever Not Funny', runtime_mins: 41, commedian_id: ray.id)
        special_3 = Special.create!(name: 'All for the Money', runtime_mins: 42, commedian_id: jon.id)
        special_4 = Special.create!(name: 'Live and Livin', runtime_mins: 64, commedian_id: jon.id)

        visit comedians_path

        within "#comedian-#{ray.id}" do
            expect(page).to have_content('Ray')
            expect(page).to have_content('22')
            expect(page).to have_content('New York')
            expect(page).to have_content('Chew on This')
            expect(page).to have_content('Forever Not Funny')
            expect(page).to have_content(22)
            expect(page).to have_content(41)
        end

        within "#comedian-#{jon.id}" do
            expect(page).to have_content('Jon')
            expect(page).to have_content('32')
            expect(page).to have_content('Boston')
            expect(page).to have_content('All for the Money')
            expect(page).to have_content('Live and Livin')
            expect(page).to have_content(42)
            expect(page).to have_content(64)
        end
    end
end
