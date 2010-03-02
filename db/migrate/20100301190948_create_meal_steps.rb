class CreateMealSteps < ActiveRecord::Migration
  def self.up
    create_table :meal_steps do |t|
      t.string :step, :null => false
      t.integer :meal_id, :null => false
    end
  end
  
  def self.down
    drop_table :meal_steps
  end
end
