require 'rails_helper'

describe 'when user clicks on comedian' do 
    describe 'it takes you to individual comedian page' do 
        it 'displays comdian info' do 
            ray = Comedian.create!(name: 'Ray', age: 22, city: 'New York')

            visit comedians_path

            click_link ray.name

            expect(page).to have_content(comedian.name)
            expect(page).to have_content(comedian.age)
            expect(page).to have_content(comedian.city)
        end 
    end
end