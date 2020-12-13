class Routine < ApplicationRecord
    has_many :workout_routine_objs
    has_many :workouts, through: :workout_routine_objs
    belongs_to :user
end
