class WeeklyMenuSerializer < ActiveModel::Serializer
  attributes :id, :week_of, :user_id, :recipes
end
