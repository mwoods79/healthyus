class CreateMealTags < ActiveRecord::Migration
  def self.up
    create_table :meal_tags do |t|
      t.string :name, :null => false
      t.integer :meal_id, :null => false
    end
  end
  
  def self.down
    drop_table :meal_tags
  end
end
