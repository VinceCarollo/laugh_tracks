require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it { should validate_presence_of :user_name }
    it { should validate_presence_of :password_digest }
    it { should validate_presence_of :role }
  end

end
