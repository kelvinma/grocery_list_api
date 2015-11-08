class Meal < ActiveRecord::Base
  belongs_to :weekly_menu
  has_many :recipes
end
