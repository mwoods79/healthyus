class Food < ActiveRecord::Base
  belongs_to :food_group
  has_many :common_weights
  has_many :food_nutrients
  has_many :nutrients, :through => :food_nutrients
  has_many :measurements
  has_many :meals, :through => :measurement
end
