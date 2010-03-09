class RenameStepInMealStep < ActiveRecord::Migration
  def self.up
    rename_column :meal_steps, :step, :name 
  end

  def self.down
    rename_column :meal_steps, :name, :step
  end
end
