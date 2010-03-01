class Nutrient < ActiveRecord::Base
  has_many :food_nutrients
  has_many :foods, :through => :food_nutrients
end
