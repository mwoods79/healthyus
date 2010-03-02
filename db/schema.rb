# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100301190948) do

  create_table "common_weights", :force => true do |t|
    t.integer "food_id",                                                 :null => false
    t.integer "position",    :limit => 2,                                :null => false
    t.decimal "amount",                    :precision => 5, :scale => 3, :null => false
    t.string  "description", :limit => 80,                               :null => false
    t.decimal "weight",                    :precision => 7, :scale => 1, :null => false
  end

  create_table "food_groups", :force => true do |t|
    t.string "name", :limit => 60, :null => false
  end

  create_table "food_nutrients", :force => true do |t|
    t.integer "food_id",                                    :null => false
    t.integer "nutrient_id",                                :null => false
    t.decimal "amount",      :precision => 10, :scale => 3
  end

  create_table "foods", :force => true do |t|
    t.integer "group_id",                          :null => false
    t.string  "description",        :limit => 200, :null => false
    t.string  "common_names",       :limit => 100
    t.string  "manufacturer",       :limit => 65
    t.integer "refuse_percentage",  :limit => 2
    t.string  "refuse_description", :limit => 135
    t.decimal "nitrogen_factor"
    t.decimal "protein_factor"
    t.decimal "fat_factor"
    t.decimal "carb_factor"
  end

  create_table "meal_steps", :force => true do |t|
    t.string  "step",    :null => false
    t.integer "meal_id", :null => false
  end

  create_table "meal_tags", :force => true do |t|
    t.string  "name",    :null => false
    t.integer "meal_id", :null => false
  end

  create_table "meals", :force => true do |t|
    t.string   "title",      :null => false
    t.integer  "user_id",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "measurements", :force => true do |t|
    t.integer "amount_in_grams", :null => false
    t.decimal "amount_in_oz",    :null => false
    t.integer "meal_id",         :null => false
    t.integer "food_id",         :null => false
  end

  create_table "nutrients", :force => true do |t|
    t.string  "name",     :limit => 60, :null => false
    t.string  "units",    :limit => 7,  :null => false
    t.integer "position",               :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
