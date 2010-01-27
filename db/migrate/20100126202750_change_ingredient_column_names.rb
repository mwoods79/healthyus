class ChangeIngredientColumnNames < ActiveRecord::Migration
  def self.up
    rename_column :ingredients, :Shrt_Desc,   :name
    rename_column :ingredients, :Energ_Kc,    :calories
    rename_column :ingredients, :Protein,     :protein
    rename_column :ingredients, :Lipid_Tot,   :lipids
    rename_column :ingredients, :Fiber_TD,    :fiber
    rename_column :ingredients, :Sugar_Tot,   :sugar
    rename_column :ingredients, :Calcium,     :calcium
    rename_column :ingredients, :Iron,        :iron
    rename_column :ingredients, :Sodium,      :sodium
    rename_column :ingredients, :FA_Sat,      :saturated_fat
    rename_column :ingredients, :Cholestrl,   :cholesteral
    rename_column :ingredients, :GmWt_1,      :weight_in_grams
    rename_column :ingredients, :GmWt_Desc1,  :weight_description
  end

  def self.down
    rename_column :ingredients, :weight_description,  :GmWt_Desc1
    rename_column :ingredients, :weight_in_grams,     :GmWt_1
    rename_column :ingredients, :cholesteral,         :Cholestrl
    rename_column :ingredients, :saturated_fat,       :FA_Sat
    rename_column :ingredients, :sodium,              :Sodium
    rename_column :ingredients, :iron,                :Iron
    rename_column :ingredients, :calcium,             :Calcium
    rename_column :ingredients, :sugar,               :Sugar_Tot
    rename_column :ingredients, :fiber,               :Fiber_TD
    rename_column :ingredients, :lipids,              :Lipid_Tot
    rename_column :ingredients, :protein,             :Protein
    rename_column :ingredients, :calories,            :Energ_Kc
    rename_column :ingredients, :name,                :Shrt_Desc
  end
end