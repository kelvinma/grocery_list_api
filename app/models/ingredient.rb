class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :groceries
  has_many :recipes, through: :recipe_ingredients
  has_many :weekly_menus, through: :groceries
end
