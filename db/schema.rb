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

ActiveRecord::Schema.define(version: 20151109160420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groceries", force: :cascade do |t|
    t.integer "weekly_menu_id"
    t.integer "ingredient_id"
    t.string  "amount"
  end

  add_index "groceries", ["ingredient_id"], name: "index_groceries_on_ingredient_id", using: :btree
  add_index "groceries", ["weekly_menu_id"], name: "index_groceries_on_weekly_menu_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string  "name"
    t.string  "type_of"
    t.boolean "is_vegetarian"
    t.boolean "is_vegan"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "weekly_menu_id"
  end

  add_index "meals", ["recipe_id"], name: "index_meals_on_recipe_id", using: :btree
  add_index "meals", ["weekly_menu_id"], name: "index_meals_on_weekly_menu_id", using: :btree

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
    t.string  "amount"
  end

  add_index "recipe_ingredients", ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id", using: :btree
  add_index "recipe_ingredients", ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "which_meal"
    t.string "style"
    t.text   "instructions"
    t.text   "description"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  create_table "weekly_menus", force: :cascade do |t|
    t.date    "week_of"
    t.integer "user_id"
  end

  add_index "weekly_menus", ["user_id"], name: "index_weekly_menus_on_user_id", using: :btree

  add_foreign_key "groceries", "ingredients"
  add_foreign_key "groceries", "weekly_menus"
  add_foreign_key "meals", "recipes"
  add_foreign_key "meals", "weekly_menus"
  add_foreign_key "recipe_ingredients", "ingredients"
  add_foreign_key "recipe_ingredients", "recipes"
  add_foreign_key "weekly_menus", "users"
end
