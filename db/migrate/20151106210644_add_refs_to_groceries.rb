class AddRefsToGroceries < ActiveRecord::Migration
  def change
    add_reference :groceries, :weekly_menu, index: true, foreign_key: true
    add_reference :groceries, :ingredient, index: true, foreign_key: true
  end
end
