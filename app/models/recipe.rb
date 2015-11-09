class Recipe < ActiveRecord::Base
  has_many :meals
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :weekly_menus, through: :meals
end
