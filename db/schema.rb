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

ActiveRecord::Schema.define(:version => 20130628041444) do

  create_table "brackets", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "slug"
    t.integer  "user_id"
    t.boolean  "show_in_tournaments", :default => true
    t.boolean  "show_in_profile",     :default => true
  end

  add_index "brackets", ["slug"], :name => "index_brackets_on_slug"
  add_index "brackets", ["user_id"], :name => "index_brackets_on_user_id"

  create_table "matches", :force => true do |t|
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.integer  "team1_score",      :default => 0
    t.integer  "team2_score",      :default => 0
    t.integer  "bracket_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "next_match_id"
    t.integer  "bracket_position"
  end

  add_index "matches", ["bracket_id"], :name => "index_matches_on_bracket_id"

  create_table "messages", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "permissions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "thing_id"
    t.string   "thing_type"
    t.string   "action"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "static_blocks_snippet_translations", :force => true do |t|
    t.integer  "static_blocks_snippet_id"
    t.string   "locale"
    t.text     "content"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "static_blocks_snippet_translations", ["locale"], :name => "index_static_blocks_snippet_translations_on_locale"
  add_index "static_blocks_snippet_translations", ["static_blocks_snippet_id"], :name => "index_065ea3d746be618a83324e6f6ef82e2f6dc43e03"

  create_table "static_blocks_snippets", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "bracket_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "teams", ["bracket_id"], :name => "index_teams_on_bracket_id"

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
    t.string   "provider"
    t.string   "uid"
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
