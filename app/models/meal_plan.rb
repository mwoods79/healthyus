class MealPlan < ActiveRecord::Base

 belongs_to :family 
 has_many :days


end
