class Meal < ActiveRecord::Base
  attr_accessible :user_id, :title, :instructions
  
  # Model relationships should go here for readability
  has_one :user
  has_many :measurements
  has_many :ingredients, :through => :measurements
end
