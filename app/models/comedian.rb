class Comedian < ApplicationRecord
  has_many :specials, dependent: :destroy
  validates_presence_of :name, :age, :birthplace

  def special_count
    self.specials.count
  end

  def self.get_comedians_by_age(age)
    self.where("age = #{age}")
  end

  def self.get_all_comedians
    self.all
  end

  def self.get_comedian_by_id(id)
    self.find(id)
  end
end
