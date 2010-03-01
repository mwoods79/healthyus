class CreateFoodGroups < ActiveRecord::Migration
  def self.up
    create_table :food_groups do |t|
      t.string :name, :null => false, :limit => 60
    end
  end

  def self.down
    drop_table :food_groups
  end
end
