class Meal < ActiveRecord::Base
  attr_accessible :title
  
  belongs_to :user
  has_many :meal_steps, :dependent => :destroy
  has_many :meal_tags, :dependent => :destroy
  has_many :measurements, :dependent => :destroy
  has_many :foods, :through => :measurements
  
  accepts_nested_attributes_for :meal_steps, :meal_tags, :measurements
  
  validates_presence_of :title
end
