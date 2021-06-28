class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :type
      t.integer :minutes
      t.integer :day_id

      t.timestamps
    end
  end
end
