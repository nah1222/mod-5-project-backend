class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :userId
      t.integer :routineId
      t.string :comment

      t.timestamps
    end
  end
end
