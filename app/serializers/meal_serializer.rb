class MealSerializer < ActiveModel::Serializer
  attributes :id, :recipe_name, :recipe_style, :recipe_which_meal

  def recipe_name
    object.recipe.name
  end

  def recipe_style
    object.recipe.style
  end

  def recipe_which_meal
    object.recipe.which_meal
  end
end
