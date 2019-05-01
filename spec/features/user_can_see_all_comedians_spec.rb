require 'rails_helper'

describe 'when user goes to comedian page' do
    it 'shows all comedian attributes' do
        ray = Comedian.create!(name: 'Ray', age: 22, birthplace: 'New York', image_url: 'https://www.santacruzgalapagoscruise.com/wp-content/uploads/2017/06/marbleray2-whatsthatfish.com_.jpg')
        jon = Comedian.create!(name: 'Jon', age: 32, birthplace: 'Boston', image_url: 'https://images-i.jpimedia.uk/imagefetch/c_fill,f_auto,q_auto:eco,w_1200/https://inews.co.uk/wp-content/uploads/2019/04/got-cast26.jpg')
        special_1 = Special.create!(name: 'Chew on This', runtime_mins: 22, comedian_id: ray.id)
        special_2 = Special.create!(name: 'Forever Not Funny', runtime_mins: 41, comedian_id: ray.id)
        special_3 = Special.create!(name: 'All for the Money', runtime_mins: 42, comedian_id: jon.id)
        special_4 = Special.create!(name: 'Live and Livin', runtime_mins: 64, comedian_id: jon.id)

        visit comedians_path

        within "#comedian-#{ray.id}" do
            expect(page).to have_content('Ray')
            expect(page).to have_content('22')
            expect(page).to have_content('New York')
            expect(page).to have_content('Chew on This')
            expect(page).to have_content('Forever Not Funny')
            expect(page).to have_content(22)
            expect(page).to have_content(41)
            find "img[src='https://www.santacruzgalapagoscruise.com/wp-content/uploads/2017/06/marbleray2-whatsthatfish.com_.jpg']"
        end

        within "#comedian-#{jon.id}" do
            expect(page).to have_content('Jon')
            expect(page).to have_content('32')
            expect(page).to have_content('Boston')
            expect(page).to have_content('All for the Money')
            expect(page).to have_content('Live and Livin')
            expect(page).to have_content(42)
            expect(page).to have_content(64)
            find "img[src='https://images-i.jpimedia.uk/imagefetch/c_fill,f_auto,q_auto:eco,w_1200/https://inews.co.uk/wp-content/uploads/2019/04/got-cast26.jpg']"
        end
    end

    it 'can filter by comedian age' do
      ray = Comedian.create!(name: 'Ray', age: 22, birthplace: 'New York')
      jon = Comedian.create!(name: 'Jon', age: 32, birthplace: 'Boston')
      jason = Comedian.create!(name: 'Jason', age: 22, birthplace: 'KCMO')

      visit '/comedians?age=22'

      expect(page).to have_content(ray.name)
      expect(page).to have_content(jason.name)
      expect(page).to_not have_content(jon.name)
    end

    it 'can show count of each comedians special' do
      ray = Comedian.create!(name: 'Ray', age: 22, birthplace: 'New York', image_url: 'https://www.santacruzgalapagoscruise.com/wp-content/uploads/2017/06/marbleray2-whatsthatfish.com_.jpg')
      jon = Comedian.create!(name: 'Jon', age: 32, birthplace: 'Boston', image_url: 'https://images-i.jpimedia.uk/imagefetch/c_fill,f_auto,q_auto:eco,w_1200/https://inews.co.uk/wp-content/uploads/2019/04/got-cast26.jpg')
      special_1 = Special.create!(name: 'Chew on This', runtime_mins: 22, comedian_id: ray.id)
      special_2 = Special.create!(name: 'Forever Not Funny', runtime_mins: 41, comedian_id: ray.id)
      special_3 = Special.create!(name: 'All for the Money', runtime_mins: 42, comedian_id: jon.id)
      special_4 = Special.create!(name: 'Live and Livin', runtime_mins: 64, comedian_id: jon.id)
      special_5 = Special.create!(name: 'So Funny', runtime_mins: 31, comedian_id: jon.id)

      visit comedians_path

      within "#comedian-#{ray.id}" do
        expect(page).to have_content('Special Count:')
        expect(page).to have_content(2)
      end

      within "#comedian-#{jon.id}" do
        expect(page).to have_content('Special Count:')
        expect(page).to have_content(3)
      end

    end
end
