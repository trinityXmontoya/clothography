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

ActiveRecord::Schema.define(version: 20140604222822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: true do |t|
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo1_file_name"
    t.string   "photo1_content_type"
    t.integer  "photo1_file_size"
    t.datetime "photo1_updated_at"
    t.string   "photo2_file_name"
    t.string   "photo2_content_type"
    t.integer  "photo2_file_size"
    t.datetime "photo2_updated_at"
    t.string   "photo3_file_name"
    t.string   "photo3_content_type"
    t.integer  "photo3_file_size"
    t.datetime "photo3_updated_at"
  end

  create_table "brands", force: true do |t|
    t.string "name"
  end

  create_table "categories", force: true do |t|
    t.string  "name"
    t.string  "icon"
    t.integer "gender_id"
  end

  add_index "categories", ["gender_id"], name: "index_categories_on_gender_id", using: :btree

  create_table "colors", force: true do |t|
    t.string   "name"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.text     "description"
    t.integer  "main_photo"
    t.integer  "original_price"
    t.integer  "price"
    t.string   "status"
    t.string   "condition"
    t.integer  "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
    t.integer  "price_before_offer"
  end

  add_index "listings", ["brand_id"], name: "index_listings_on_brand_id", using: :btree
  add_index "listings", ["category_id"], name: "index_listings_on_category_id", using: :btree
  add_index "listings", ["gender_id"], name: "index_listings_on_gender_id", using: :btree
  add_index "listings", ["size_id"], name: "index_listings_on_size_id", using: :btree
  add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree

  create_table "messages", force: true do |t|
    t.integer  "receiver_id"
    t.integer  "sender_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "viewed",      default: false
  end

  create_table "offers", force: true do |t|
    t.integer  "offerer_id"
    t.integer  "listing_id"
    t.string   "status"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "offers", ["listing_id"], name: "index_offers_on_listing_id", using: :btree

  create_table "purchases", force: true do |t|
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "sizes", force: true do |t|
    t.integer "gender_id"
    t.integer "category_id"
    t.string  "label"
    t.string  "name"
  end

  add_index "sizes", ["category_id"], name: "index_sizes_on_category_id", using: :btree
  add_index "sizes", ["gender_id"], name: "index_sizes_on_gender_id", using: :btree

  create_table "sizes_users", id: false, force: true do |t|
    t.integer "user_id", null: false
    t.integer "size_id", null: false
  end

  add_index "sizes_users", ["user_id", "size_id"], name: "index_sizes_users_on_user_id_and_size_id", using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "username"
    t.string   "name"
    t.string   "auth_token"
    t.string   "oauth_token"
    t.string   "provider"
    t.integer  "uid"
    t.datetime "auth_token_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "login_link_sent"
    t.string   "profile_photo_file_name"
    t.string   "profile_photo_content_type"
    t.integer  "profile_photo_file_size"
    t.datetime "profile_photo_updated_at"
    t.string   "bg_photo_file_name"
    t.string   "bg_photo_content_type"
    t.integer  "bg_photo_file_size"
    t.datetime "bg_photo_updated_at"
    t.integer  "gender_id"
  end

end
