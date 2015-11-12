class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :which_meal, :style, :description, :instructions, :ingredients, :meal_id

  def ingredients
    object.recipe_ingredients.map do |ri|
      {amount: ri.amount, ingredient_name: ri.ingredient.name}
    end
  end

  def meal_id
    object.meals
  end
end
