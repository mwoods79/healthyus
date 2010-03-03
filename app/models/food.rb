class Food < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 15
  
  belongs_to :food_group
  has_many :common_weights
  has_many :food_nutrients
  has_many :nutrients, :through => :food_nutrients
  has_many :measurements
  has_many :meals, :through => :measurement
end
