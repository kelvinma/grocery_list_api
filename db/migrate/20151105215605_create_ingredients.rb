class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :type
      t.boolean :is_vegetarian
      t.boolean :is_vegan
      t.timestamps null: false
    end
  end
end
