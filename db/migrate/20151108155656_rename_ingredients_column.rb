class RenameIngredientsColumn < ActiveRecord::Migration
  def change
    rename_column :ingredients, :type, :type_of
  end
end
