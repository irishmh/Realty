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

ActiveRecord::Schema.define(:version => 20100504035458) do

  create_table "contact_types", :force => true do |t|
    t.string   "contact_type_cd"
    t.string   "contact_type_desc"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.integer  "contact_type_id"
    t.string   "contact_data"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demo_contacts", :force => true do |t|
    t.integer  "demo_id"
    t.integer  "preferred_seq"
    t.integer  "contact_id"
    t.string   "contact_data"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demos", :force => true do |t|
    t.integer  "role_id"
    t.string   "name"
    t.string   "addr"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", :force => true do |t|
    t.string   "permission_desc"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", :force => true do |t|
    t.string   "addr"
    t.integer  "state_id"
    t.string   "zip"
    t.string   "desc"
    t.float    "gps_lat"
    t.float    "gps_lon"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "property_details", :force => true do |t|
    t.integer  "property_id"
    t.integer  "pic_seq"
    t.string   "pic_desc"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pic_url"
  end

  create_table "property_owners", :force => true do |t|
    t.integer  "property_id"
    t.integer  "demo_id"
    t.datetime "eff_timestamp"
    t.datetime "exp_timestamp"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "property_prices", :force => true do |t|
    t.integer  "property_id"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "property_price",   :precision => 9, :scale => 2, :default => 0.0
  end

  create_table "property_statuses", :force => true do |t|
    t.integer  "property_id"
    t.integer  "status_id"
    t.datetime "eff_timestamp"
    t.datetime "exp_timestamp"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_permissions", :force => true do |t|
    t.integer  "role_id"
    t.integer  "permission_id"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_types", :force => true do |t|
    t.string   "role_type_cd"
    t.string   "role_desc"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.integer  "role_type_id"
    t.string   "role_desc"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "state_cd"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "status_desc"
    t.string   "created_userid"
    t.string   "last_updt_userid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
