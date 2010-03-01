class FoodGroup < ActiveRecord::Base
  has_many :foods, :foreign_key => "group_id"
end
