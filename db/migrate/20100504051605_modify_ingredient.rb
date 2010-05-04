class ModifyIngredient < ActiveRecord::Migration
  def self.up
    add_column :ingredients, :meal_id, :integer
  end

  def self.down
    remove_column :ingredients, :meal_id
  end
end
