class AddedAmountsToGroceries < ActiveRecord::Migration
  def change
    add_column :groceries, :amount, :string
  end
end
