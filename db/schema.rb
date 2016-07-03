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

ActiveRecord::Schema.define(version: 20160703154224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "material_id"
    t.string   "name"
    t.string   "color"
    t.string   "size"
    t.integer  "original_quantity"
    t.integer  "current_quantity"
    t.decimal  "total_cost"
    t.datetime "purchase_date"
    t.decimal  "cost_per_piece"
  end

  create_table "businesses", force: :cascade do |t|
    t.integer "user_id"
    t.string  "name"
    t.string  "url"
  end

  create_table "customers", force: :cascade do |t|
    t.string  "name"
    t.integer "business_id"
    t.string  "email"
  end

  create_table "discounts", force: :cascade do |t|
    t.string  "name"
    t.string  "code"
    t.integer "percentage"
    t.decimal "amount"
    t.integer "business_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string  "name"
    t.decimal "amount"
    t.integer "business_id"
  end

  create_table "fees", force: :cascade do |t|
    t.string  "name"
    t.decimal "percentage"
    t.integer "business_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string  "name"
    t.integer "total_quantity"
    t.string  "color"
    t.string  "size"
    t.integer "current_batch"
  end

  create_table "order_products", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "quantity"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "business_id"
    t.decimal "subtotal"
    t.integer "discount_id"
    t.decimal "total"
    t.decimal "shipping_cost"
    t.decimal "profit"
    t.date    "order_date"
    t.integer "customer_id"
    t.integer "fee_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "user_id"
    t.string  "name"
    t.decimal "price"
  end

  create_table "shippings", force: :cascade do |t|
    t.integer "order_id"
    t.integer "tracking_number"
    t.integer "business_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "variants", force: :cascade do |t|
    t.integer "product_id"
    t.integer "material_id"
    t.string  "color"
    t.string  "size"
  end

end
