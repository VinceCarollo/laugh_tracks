require 'rails_helper'

RSpec.describe "As an admin" do
  describe 'there is a link to edit a comedian' do

    before :each do
      @admin = User.create!(user_name: 'vince', role: 1, password: 'pass')
      @user = User.create!(user_name: "Reg User", password: 'pass')
      @comedian = Comedian.create!(name: 'ari', age: 2, birthplace: 'someville')
    end

    it 'has a link to edit a comedian if admin' do
      visit login_path

      fill_in "Username", with: 'vince'
      fill_in "Password", with: 'pass'

      click_button "Log Me In"

      within "#comedian-#{@comedian.id}" do
        expect(page).to have_link("Edit #{@comedian.name}")
      end
    end

    it 'does not have a link to edit a comedian if reg user' do
      visit login_path

      fill_in "Username", with: 'Reg User'
      fill_in "Password", with: 'pass'

      click_button "Log Me In"

      within "#comedian-#{@comedian.id}" do
        expect(page).to_not have_link("Edit #{@comedian.name}")
      end

      visit edit_admin_comedian_path(@comedian)
      save_and_open_page
      expect(status_code).to eq(404)
    end

  end
end
