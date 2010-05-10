class Family < ActiveRecord::Base
  has_many :users
  has_one :meal_plan
  
  validates_presence_of :name, :on => :create, :message => "A family Must have a name."
  validates_uniqueness_of :name, :on => :create, :message => "A family name must be unique."
  
end
