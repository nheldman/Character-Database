# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110119211230) do

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.string   "real_name"
    t.string   "gender",            :limit => 1
    t.string   "alignment",         :limit => 4
    t.integer  "energy_projection"
    t.integer  "strength"
    t.integer  "durability"
    t.integer  "fighting_skill"
    t.integer  "intelligence"
    t.integer  "speed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters_powers", :id => false, :force => true do |t|
    t.integer "character_id", :null => false
    t.integer "power_id",     :null => false
  end

  create_table "images", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["character_id"], :name => "index_images_on_character_id"

  create_table "powers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
