require 'rails_helper'

describe 'when user clicks on comedian' do
    describe 'it takes you to individual comedian page' do
        it 'displays comedian info' do
            ray = Comedian.create!(name: 'Ray', age: 22, birthplace: 'New York')
            special_1 = Special.create!(name: 'Chew on This', runtime_mins: 22, comedian: ray)
            
            visit comedians_path

            click_link ray.name

            expect(page).to have_content('Ray')
            expect(page).to have_content('22')
            expect(page).to have_content('New York')
        end
    end
end
