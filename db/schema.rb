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

ActiveRecord::Schema.define(version: 20151105220525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grocery_lists", force: :cascade do |t|
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.boolean  "is_vegetarian"
    t.boolean  "is_vegan"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "meal_plans", force: :cascade do |t|
    t.date "week_of"
  end

  create_table "recipes", force: :cascade do |t|
    t.string  "name"
    t.string  "which_meal"
    t.string  "style"
    t.string  "difficulty"
    t.integer "ingredient_id"
    t.integer "meal_plan_id"
  end

  add_index "recipes", ["ingredient_id"], name: "index_recipes_on_ingredient_id", using: :btree
  add_index "recipes", ["meal_plan_id"], name: "index_recipes_on_meal_plan_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "recipes", "ingredients"
  add_foreign_key "recipes", "meal_plans"
end
