class Meal < ActiveRecord::Base
  belongs_to :weekly_menu
  belongs_to :recipe
end
