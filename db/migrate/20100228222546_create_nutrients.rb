class CreateNutrients < ActiveRecord::Migration
  def self.up
    create_table :nutrients do |t|
      t.string :name, :null => false, :limit => 60
      t.string :units, :null => false, :limit => 7
      t.integer :position, :null => false
    end
  end

  def self.down
    drop_table :nutrients
  end
end
