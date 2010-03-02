class CreateMeasurements < ActiveRecord::Migration
  def self.up
    create_table :measurements do |t|
      t.integer :amount_in_grams, :null => false
      t.decimal :amount_in_oz, :null => false
      t.integer :meal_id, :null => false
      t.integer :food_id, :null => false
    end
  end
  
  def self.down
    drop_table :measurements
  end
end
