class CreateDays < ActiveRecord::Migration
  def self.up
    create_table :days do |t|
      t.date :date
      t.integer :breakfast
      t.integer :lunch
      t.integer :dinner
      t.integer :snack_one
      t.integer :snack_two
      t.integer :snack_three
      t.timestamps
    end
  end

  def self.down
    drop_table :days
  end
end
