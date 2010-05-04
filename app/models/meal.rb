class Meal < ActiveRecord::Base

  belongs_to :user
  has_many :meal_steps, :dependent => :destroy
  has_many :meal_tags, :dependent => :destroy
  # has_many :measurements, :dependent => :destroy
  # has_many :foods, :through => :measurements
  has_many :ingredients, :dependent => :destroy
  
  accepts_nested_attributes_for :meal_tags, :meal_steps, :ingredients,
                                :allow_destroy => true,
                                :reject_if => proc { |attributes| attributes['name'].blank? }
  
  # accepts_nested_attributes_for :measurements, :allow_destroy => true
  
  validates_presence_of :title
end
