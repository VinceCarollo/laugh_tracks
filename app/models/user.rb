class User < ApplicationRecord
  validates_presence_of :user_name, uniqueness: true, case_sensitvie: false
  validates_presence_of :password_digest, require: true

  validates :role, presence: true, inclusion: 0..1
  enum role: ['default', 'admin']
  
  has_secure_password
end
