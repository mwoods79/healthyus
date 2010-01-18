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

ActiveRecord::Schema.define(:version => 20100118201802) do

  create_table "ingredients", :force => true do |t|
    t.string   "Shrt_Desc"
    t.float    "Energ_Kc"
    t.float    "Protein"
    t.float    "Lipid_Tot"
    t.float    "Fiber_TD"
    t.float    "Sugar_Tot"
    t.float    "Calcium"
    t.float    "Iron"
    t.float    "Sodium"
    t.float    "FA_Sat"
    t.float    "Cholestrl"
    t.float    "GmWt_1"
    t.string   "GmWt_Desc1"
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
