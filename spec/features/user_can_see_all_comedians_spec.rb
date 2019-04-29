require 'rails_helper'

describe 'when user goes to comedian page' do 
    it 'shows all comedian attributes' do 
        ray = Comedian.create!(name: 'Ray', age: 22, city: 'New York')
        jon = Comedian.create!(name: 'Jon', age: 32, city: 'Boston')

        visit comedians_path

        within "#comedian-#{ray.id}" do 
            expect(page).to have_content('Ray')
            expect(page).to have_content('22')
            expect(page).to have_content('New York')
        end

        within "#comedian-#{jon.id}" do 
            expect(page).to have_content('Jon')
            expect(page).to have_content('32')
            expect(page).to have_content('Boston')
        end
    end
end
