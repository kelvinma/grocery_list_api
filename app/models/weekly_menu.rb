class WeeklyMenu < ActiveRecord::Base
  belongs_to :user
  has_many :meals
  has_many :recipes, through: :meals
  has_one :grocery
end
