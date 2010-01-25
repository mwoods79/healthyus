class Meal < ActiveRecord::Base
  attr_accessible :user_id, :title, :ingredient, :instructions
  
  # Model relationships should go here for readability
  has_one :user
end
