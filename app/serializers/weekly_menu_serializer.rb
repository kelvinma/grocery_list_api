class WeeklyMenuSerializer < ActiveModel::Serializer
  attributes :id, :week_of, :user_id

  has_many :meals
end
