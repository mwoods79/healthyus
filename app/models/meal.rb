class Meal < ActiveRecord::Base
  attr_accessible :user_id, :title, :instructions
  
  # Model relationships should go here for readability
  has_one :user
  has_many :measurements
  has_many :ingredients, :through => :measurements
  
  def ingredient_name
    
  end
  
  def ingredient_name=(name)
    self.measurements.ingredients = Ingredient.find_by_name(name) unless name.blank?
  end
end
