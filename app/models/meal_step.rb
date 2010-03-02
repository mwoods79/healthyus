class MealStep < ActiveRecord::Base
  attr_accessible :step
  
  belongs_to :meal
end
