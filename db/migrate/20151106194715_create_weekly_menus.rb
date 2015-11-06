class CreateWeeklyMenus < ActiveRecord::Migration
  def change
    create_table :weekly_menus do |t|
      t.date :week_of
    end
  end
end
