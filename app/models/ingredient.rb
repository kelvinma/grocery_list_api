class Ingredient < ActiveRecord::Base
  belongs_to :recipe_ingredient
  belongs_to :grocery
end
