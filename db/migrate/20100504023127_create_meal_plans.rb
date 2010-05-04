class CreateMealPlans < ActiveRecord::Migration
  def self.up
    create_table :meal_plans do |t|
      t.integer :day_id
      t.integer :family_id
      t.timestamps
    end
  end

  def self.down
    drop_table :meal_plans
  end
end
