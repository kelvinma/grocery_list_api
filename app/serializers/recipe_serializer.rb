class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :which_meal, :style, :description, :instructions, :meals
end
