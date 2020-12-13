class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :name
      t.integer :user_id
      t.integer :difficulty

      t.timestamps
    end
  end
end
