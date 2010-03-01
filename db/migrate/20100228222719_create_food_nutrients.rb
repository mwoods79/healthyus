class CreateFoodNutrients < ActiveRecord::Migration
  def self.up
    create_table :food_nutrients do |t|
      t.integer :food_id, :null => false
      t.integer :nutrient_id, :null => false
      t.decimal :amount, :precision => 10, :scale => 3
    end
  end

  def self.down
    drop_table :food_nutrients
  end
end
