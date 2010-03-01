class CreateFoods < ActiveRecord::Migration
  def self.up
    create_table :foods do |t|
      t.integer :group_id, :null => false
      t.string :description, :null => false, :limit => 200
      t.string :common_names, :limit => 100
      t.string :manufacturer, :limit => 65
      t.integer :refuse_percentage, :limit => 1
      t.string :refuse_description, :limit => 135
      t.decimal :nitrogen_factor, :precison => 4, :scale => 2
      t.decimal :protein_factor, :precison => 4, :scale => 2
      t.decimal :fat_factor, :precison => 4, :scale => 2
      t.decimal :carb_factor, :precison => 4, :scale => 2
    end
  end

  def self.down
    drop_table :foods
  end
end
