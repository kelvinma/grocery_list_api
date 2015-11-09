class Grocery < ActiveRecord::Base
  has_many :ingredients
  belongs_to :weekly_menu
end
