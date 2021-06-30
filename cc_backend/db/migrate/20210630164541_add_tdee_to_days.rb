class AddTdeeToDays < ActiveRecord::Migration[6.1]
  def change
    add_column :days, :tdee, :integer
  end
end
