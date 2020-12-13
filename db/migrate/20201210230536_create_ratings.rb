class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :routine_id
      t.string :comment

      t.timestamps
    end
  end
end
