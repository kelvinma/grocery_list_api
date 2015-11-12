class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :which_meal, :style, :description, :instructions, :ingredients

  def ingredients
    object.recipe_ingredients.map do |ri|
      {amount: ri.amount, ingredient_name: ri.ingredient.name}
    end
  end
end
