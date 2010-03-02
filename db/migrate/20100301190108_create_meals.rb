class CreateMeals < ActiveRecord::Migration
  def self.up
    create_table :meals do |t|
      t.string :title, :null => false
      t.integer :user_id, :null => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :meals
  end
end
