class CreateWorkoutRoutineObjs < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_routine_objs do |t|
      t.integer :routine_id
      t.integer :reps
      t.integer :workout_id

      t.timestamps
    end
  end
end
