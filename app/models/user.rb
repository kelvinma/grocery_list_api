#
class User < ActiveRecord::Base
  include Authentication

  has_many :weekly_menus
end
