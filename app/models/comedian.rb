class Comedian < ApplicationRecord
  has_many :specials, dependent: :destroy
  validates_presence_of :name, :age, :birthplace

  def special_count
    self.specials.count
  end

  def self.get_total_runtimes
    self.sum{|comedian| comedian.specials.sum(:runtime_mins)}
  end

  def self.get_total_special_count
    self.sum{|comedian| comedian.special_count}
  end

  def self.get_count
    self.count
  end

  def self.get_all_cities
    self.pluck(:birthplace)
  end

  def self.get_age_total
    self.sum(:age)
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
