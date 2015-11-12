class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name#, :amount

  # def amount
  #   object.recipe_ingredients.first.amount
  # end
end
