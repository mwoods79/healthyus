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

ActiveRecord::Schema.define(:version => 20100126202750) do

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.float    "calories"
    t.float    "protein"
    t.float    "lipids"
    t.float    "fiber"
    t.float    "sugar"
    t.float    "calcium"
    t.float    "iron"
    t.float    "sodium"
    t.float    "saturated_fat"
    t.float    "cholesteral"
    t.float    "weight_in_grams"
    t.string   "weight_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "meal"
  end

  create_table "meals", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "measurements", :force => true do |t|
    t.integer  "meal_id"
    t.integer  "ingredient_id"
    t.float    "amount_in_grams"
    t.string   "amount_descripiton"
    t.datetime "created_at"
    t.datetime "updated_at"
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
