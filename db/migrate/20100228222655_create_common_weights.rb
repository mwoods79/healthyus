class CreateCommonWeights < ActiveRecord::Migration
  def self.up
    create_table :common_weights do |t|
      t.integer :food_id, :null => false
      t.integer :position, :null => false, :limit => 1
      t.decimal :amount, :null => false, :precision => 5, :scale => 3
      t.string :description, :null => false, :limit => 80
      t.decimal :weight, :null => false, :precision => 7, :scale => 1
    end
  end

  def self.down
    drop_table :common_weights
  end
end
