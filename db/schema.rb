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

ActiveRecord::Schema.define(:version => 20130806062552) do

  create_table "abouts", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "apps", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "firmware_version"
    t.string   "resolution"
    t.string   "app_icon_file_name"
    t.string   "app_icon_content_type"
    t.integer  "app_icon_file_size"
    t.datetime "app_icon_updated_at"
    t.boolean  "published",                   :default => false
    t.boolean  "top_show",                    :default => false
    t.string   "plist_file_file_name"
    t.string   "plist_file_content_type"
    t.integer  "plist_file_file_size"
    t.datetime "plist_file_updated_at"
    t.string   "installer_file_file_name"
    t.string   "installer_file_content_type"
    t.integer  "installer_file_file_size"
    t.datetime "installer_file_updated_at"
  end

  add_index "apps", ["category_id"], :name => "index_apps_on_category_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "landscapes", :force => true do |t|
    t.string   "resolution"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "landscape_pic_file_name"
    t.string   "landscape_pic_content_type"
    t.integer  "landscape_pic_file_size"
    t.datetime "landscape_pic_updated_at"
    t.integer  "app_id"
    t.boolean  "slided"
  end

  create_table "mobile_devices", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mobile_resolutions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "portraits", :force => true do |t|
    t.string   "resolution"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "portrait_pic_file_name"
    t.string   "portrait_pic_content_type"
    t.integer  "portrait_pic_file_size"
    t.datetime "portrait_pic_updated_at"
    t.integer  "app_id"
    t.boolean  "slided"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
