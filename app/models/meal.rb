class Meal < ActiveRecord::Base

  belongs_to :user
  has_many :meal_steps, :dependent => :destroy
  has_many :meal_tags, :dependent => :destroy
  has_many :measurements, :dependent => :destroy
  has_many :foods, :through => :measurements
  
  accepts_nested_attributes_for :meal_tags, :meal_steps, :measurements,
                                :allow_destroy => true,
                                :reject_if => proc { |attributes| attributes['name'].blank? }
  
  validates_presence_of :title
end
