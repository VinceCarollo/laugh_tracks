class Comedian < ApplicationRecord
  has_many :specials, dependent: :destroy
  validates_presence_of :name, :age, :birthplace
end
