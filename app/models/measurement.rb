class Measurement < ActiveRecord::Base
  attr_accessible :amount_in_grams, :amount_in_oz
  
  belongs_to :meal
  belongs_to :food
end
