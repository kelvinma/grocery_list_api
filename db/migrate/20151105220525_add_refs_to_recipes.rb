class AddRefsToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :ingredient, index: true, foreign_key: true
    add_reference :recipes, :meal_plan, index: true, foreign_key: true
  end
end
