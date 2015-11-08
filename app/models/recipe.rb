class Recipe < ActiveRecord::Base
  has_many :meals
  has_one :recipe_ingredient
  has_many :ingredients, through: :recipe_ingredient
  has_many :weekly_menus, through: :meals
end
