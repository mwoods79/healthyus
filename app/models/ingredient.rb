class Ingredient < ActiveRecord::Base
  has_many :measurements
  has_many :meals, :through => :measurements
end
