class RemoveIngredientFromMeal < ActiveRecord::Migration
  def self.up
    remove_column :meals, :ingredient
  end

  def self.down
    add_column :meals, :ingredient, :text
  end
end
