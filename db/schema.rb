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

ActiveRecord::Schema.define(version: 20161215101627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.float    "original_price"
    t.float    "offer_price"
    t.boolean  "is_available"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "quantity"
    t.date     "end_time"
    t.index ["user_id"], name: "index_products_on_user_id", using: :btree
  end

  create_table "products_tags", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "tag_id",     null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "store_name"
    t.string   "image"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "is_store"
    t.string   "open_from"
    t.string   "open_until"
    t.string   "website"
    t.string   "phone_number"
    t.string   "icon"
  end

  add_foreign_key "products", "users"
end
