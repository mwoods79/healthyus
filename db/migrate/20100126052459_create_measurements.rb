class CreateMeasurements < ActiveRecord::Migration
  def self.up
    create_table :measurements do |t|
      t.integer :meal_id
      t.integer :ingredient_id
      t.float :amount_in_grams
      t.string :amount_descripiton

      t.timestamps
    end
  end

  def self.down
    drop_table :measurements
  end
end
