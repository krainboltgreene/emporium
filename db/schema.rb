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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130728235448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"
  enable_extension "hstore"

  create_table "accounts", force: true do |t|
    t.string   "username",                            null: false
    t.string   "email",                               null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["confirmation_token"], name: "index_accounts_on_confirmation_token", unique: true, using: :btree
  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true, using: :btree
  add_index "accounts", ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true, using: :btree
  add_index "accounts", ["unlock_token"], name: "index_accounts_on_unlock_token", unique: true, using: :btree
  add_index "accounts", ["username"], name: "index_accounts_on_username", unique: true, using: :btree

  create_table "downloadables", force: true do |t|
    t.string   "name"
    t.string   "version"
    t.string   "compatible"
    t.text     "description"
    t.text     "changelog"
    t.text     "guide"
    t.integer  "account_id"
    t.string   "link"
    t.integer  "download_count"
    t.integer  "bookmark_count"
    t.string   "source"
    t.text     "license"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "downloadables", ["account_id"], name: "index_downloadables_on_account_id", using: :btree
  add_index "downloadables", ["bookmark_count"], name: "index_downloadables_on_bookmark_count", using: :btree
  add_index "downloadables", ["compatible"], name: "index_downloadables_on_compatible", using: :btree
  add_index "downloadables", ["download_count"], name: "index_downloadables_on_download_count", using: :btree
  add_index "downloadables", ["name"], name: "index_downloadables_on_name", using: :btree
  add_index "downloadables", ["type"], name: "index_downloadables_on_type", using: :btree
  add_index "downloadables", ["version"], name: "index_downloadables_on_version", using: :btree

  create_table "media", force: true do |t|
    t.string   "image"
    t.boolean  "primary"
    t.integer  "downloadable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "media", ["downloadable_id"], name: "index_media_on_downloadable_id", using: :btree
  add_index "media", ["primary"], name: "index_media_on_primary", using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "tag_id",        null: false
    t.integer  "taggable_id",   null: false
    t.string   "taggable_type", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_type", "taggable_id", "tag_id"], name: "unique_taggings", unique: true, using: :btree
  add_index "taggings", ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "versions", force: true do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end
