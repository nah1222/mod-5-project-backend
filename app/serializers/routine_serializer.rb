class RoutineSerializer < ActiveModel::Serializer
  attributes :id, :name, :user, :difficulty
  # has_many :workouts
  has_many :workout_routine_objs
end
