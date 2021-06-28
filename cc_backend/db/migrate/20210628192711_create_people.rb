class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.float :inches
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
