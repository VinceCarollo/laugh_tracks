require 'rails_helper'

RSpec.describe 'as a visitor' do
  describe 'after clicking register' do

    it 'lets me create a login' do
      visit comedians_path

      click_link "Register"

      fill_in "Username", with: "vince"
      fill_in "Password", with: "pass"
      fill_in "Password comfirmation", with: "pass"

      click_button "Register me"

      expect(current_path).to eq(comedians_path)
      expect(page).to have_content("You are now registered")

      user = User.last

      expect(user.user_name).to eq("vince")
      expect(user.role).to eq("default")
    end

  end
end
