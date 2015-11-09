class AddRefsToMeals < ActiveRecord::Migration
  def change
    add_reference :meals, :recipe, index: true, foreign_key: true
    add_reference :meals, :weekly_menu, index: true, foreign_key: true
  end
end
