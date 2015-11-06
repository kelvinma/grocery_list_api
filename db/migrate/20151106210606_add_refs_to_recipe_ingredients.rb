class AddRefsToRecipeIngredients < ActiveRecord::Migration
  def change
    add_reference :recipe_ingredients, :recipe, index: true, foreign_key: true
    add_reference :recipe_ingredients, :ingredient, index: true, foreign_key: true
  end
end
