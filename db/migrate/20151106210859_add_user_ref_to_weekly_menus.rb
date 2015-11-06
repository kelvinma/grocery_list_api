class AddUserRefToWeeklyMenus < ActiveRecord::Migration
  def change
    add_reference :weekly_menus, :user, index: true, foreign_key: true
  end
end
