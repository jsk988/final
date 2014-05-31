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

ActiveRecord::Schema.define(version: 20140531025614) do

  create_table "brands", force: true do |t|
    t.string "name"
  end

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "favorites", force: true do |t|
    t.integer "user_id"
    t.integer "product_id"
  end

  create_table "product_ratings", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.boolean  "currently_use", default: false
    t.boolean  "works",         default: false
    t.boolean  "oily",          default: false
    t.boolean  "dry",           default: false
    t.boolean  "heavy",         default: false
    t.boolean  "breakout",      default: false
    t.boolean  "allergic",      default: false
    t.boolean  "treats",        default: false
    t.string   "review"
    t.float    "rating"
    t.datetime "created_at"
  end

  create_table "product_types", force: true do |t|
    t.integer "category_id"
    t.string  "name"
  end

  create_table "products", force: true do |t|
    t.integer  "brand_id"
    t.integer  "product_type_id"
    t.string   "description"
    t.float    "price"
    t.integer  "skintype_id"
    t.integer  "review_count"
    t.float    "rating"
    t.string   "link"
    t.string   "image"
    t.datetime "created_at"
    t.string   "name"
  end

  create_table "skin_types", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.integer  "skintype_id"
    t.string   "ethnicity"
    t.string   "city"
    t.integer  "bday_month"
    t.integer  "bday_day"
    t.integer  "bday_year"
    t.integer  "age"
    t.string   "username"
    t.datetime "created_at"
  end

end
