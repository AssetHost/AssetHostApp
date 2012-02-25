# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120224231534) do

  create_table "asset_host_core_asset_outputs", :force => true do |t|
    t.integer  "asset_id",          :null => false
    t.integer  "output_id",         :null => false
    t.string   "fingerprint"
    t.string   "image_fingerprint", :null => false
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "asset_host_core_assets", :force => true do |t|
    t.string   "title"
    t.string   "owner"
    t.string   "url"
    t.text     "caption"
    t.text     "notes"
    t.integer  "creator_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.string   "image_copyright"
    t.string   "image_fingerprint"
    t.string   "image_title"
    t.string   "image_description"
    t.string   "image_gravity"
    t.integer  "image_width"
    t.integer  "image_height"
    t.integer  "image_file_size"
    t.integer  "image_version"
    t.datetime "image_updated_at"
    t.datetime "image_taken"
    t.integer  "native_id"
    t.string   "native_type"
    t.boolean  "is_hidden",          :default => false, :null => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "asset_host_core_brightcove_videos", :force => true do |t|
    t.integer  "videoid",    :null => false
    t.integer  "length"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "asset_host_core_outputs", :force => true do |t|
    t.string   "code",                          :null => false
    t.string   "size",                          :null => false
    t.string   "extension",                     :null => false
    t.boolean  "prerender",  :default => false, :null => false
    t.boolean  "is_rich",    :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "brightcove_videos", :force => true do |t|
    t.integer  "videoid",    :limit => 8, :null => false
    t.integer  "length"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "is_admin",               :default => true
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
