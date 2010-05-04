class AddSexToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :male, :boolean
  end

  def self.down
    remove_column :users, :male
  end
end
