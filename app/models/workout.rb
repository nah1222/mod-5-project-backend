class Workout < ApplicationRecord
    has_many :workout_routine_objs
    has_many :routines, through: :workout_routine_objs
end
