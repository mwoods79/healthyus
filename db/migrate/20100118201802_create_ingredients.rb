class CreateIngredients < ActiveRecord::Migration
  def self.up
    create_table :ingredients do |t|

      t.string :Shrt_Desc
      t.float :Energ_Kc
      t.float :Protein
      t.float :Lipid_Tot
      t.float :Fiber_TD
      t.float :Sugar_Tot
      t.float :Calcium
      t.float :Iron
      t.float :Sodium
      t.float :FA_Sat
      t.float :Cholestrl
      t.float :GmWt_1
      t.string :GmWt_Desc1

      t.timestamps
    end
  end

  def self.down
    drop_table :ingredients
  end
end
