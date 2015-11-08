class AddQuanityToRecipeIngredients < ActiveRecord::Migration
  def change
    add_column :recipe_ingredients, :amount, :string
  end
end
