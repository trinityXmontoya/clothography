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

ActiveRecord::Schema.define(version: 20140509213004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: true do |t|
    t.string "name"
  end

  create_table "categories", force: true do |t|
    t.string  "name"
    t.integer "gender_id"
  end

  add_index "categories", ["gender_id"], name: "index_categories_on_gender_id", using: :btree

  create_table "followings", id: false, force: true do |t|
    t.integer  "followed_user_id"
    t.integer  "follower_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", force: true do |t|
    t.string "name"
  end

  create_table "listings", force: true do |t|
    t.integer  "user_id"
    t.integer  "brand_id"
    t.integer  "category_id"
    t.integer  "size_id"
    t.integer  "gender_id"
    t.string   "title"
    t.string   "description"
    t.integer  "sale_price"
    t.integer  "original_price"
    t.integer  "price"
    t.string   "status"
    t.string   "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "listings", ["brand_id"], name: "index_listings_on_brand_id", using: :btree
  add_index "listings", ["category_id"], name: "index_listings_on_category_id", using: :btree
  add_index "listings", ["gender_id"], name: "index_listings_on_gender_id", using: :btree
  add_index "listings", ["size_id"], name: "index_listings_on_size_id", using: :btree
  add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree

  create_table "listings_tags", id: false, force: true do |t|
    t.integer "tag_id",     null: false
    t.integer "listing_id", null: false
  end

  add_index "listings_tags", ["listing_id", "tag_id"], name: "index_listings_tags_on_listing_id_and_tag_id", using: :btree

  create_table "messages", force: true do |t|
    t.integer  "receiver_id"
    t.integer  "sender_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: true do |t|
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.string   "listings",   default: [], array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", force: true do |t|
    t.integer "gender_id"
    t.integer "category_id"
    t.string  "type"
    t.string  "us_number"
    t.string  "waist"
    t.string  "basic_name"
  end

  add_index "sizes", ["category_id"], name: "index_sizes_on_category_id", using: :btree
  add_index "sizes", ["gender_id"], name: "index_sizes_on_gender_id", using: :btree

  create_table "sizes_users", id: false, force: true do |t|
    t.integer "user_id", null: false
    t.integer "size_id", null: false
  end

  add_index "sizes_users", ["user_id", "size_id"], name: "index_sizes_users_on_user_id_and_size_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "username"
    t.string   "name"
    t.string   "password"
    t.string   "auth_token"
    t.string   "oauth_token"
    t.string   "provider"
    t.integer  "uid"
    t.datetime "auth_token_created_at"
    t.string   "profile_photo"
    t.string   "bg_photo"
    t.integer  "gender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["gender_id"], name: "index_users_on_gender_id", using: :btree

end
