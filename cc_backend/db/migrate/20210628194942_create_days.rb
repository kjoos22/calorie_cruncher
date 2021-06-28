class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.integer :person_id
      t.date :date
      t.float :pounds
      t.integer :calories_consumed

      t.timestamps
    end
  end
end
