class WeeklyMenu < ActiveRecord::Base
  belongs_to :user
  has_many :meals
  has_many :groceries
end
