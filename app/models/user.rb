#
class User < ActiveRecord::Base
  include Authentication

  has_many :weekly_menus
  has_many :groceries, through: :weekly_menus
end
