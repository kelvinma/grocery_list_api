class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :which_meal
      t.string :style
      t.text :instructions
    end
  end
end
