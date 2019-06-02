require 'rails_helper'

RSpec.describe 'as a registered user' do
  describe 'when clicking login' do

    before :each do
      @user = User.create!(user_name: 'vince', password: 'pass')

      visit comedians_path
    end

    it 'logs me in' do
      click_link 'Login'

      fill_in 'Username', with: 'vince'
      fill_in 'Password', with: 'pass'

      click_button "Log Me In"

      expect(page).to have_content("You are now logged in")
      expect(current_path).to eq(comedians_path)
    end

    it 'doesnt log me in with wrong credentials' do
      click_link 'Login'

      fill_in 'Username', with: 'vince'
      fill_in 'Password', with: 'password'

      click_button "Log Me In"

      expect(page).to have_content("Invalid Username/Password Combination")
    end

  end

  describe 'and logged in' do

    before :each do
      @user = User.create!(user_name: 'vince', password: 'pass')

      visit comedians_path
      click_link 'Login'

      fill_in 'Username', with: 'vince'
      fill_in 'Password', with: 'pass'

      click_button "Log Me In"
    end

    it 'logs me out when I click logout' do
      click_link "Logout"

      expect(page).to have_content("Successfully Logged Out")
      click_link "Login"

      expect(page).to_not have_content("You are already logged in")
      expect(current_path).to eq(login_path)
    end
  end
end
