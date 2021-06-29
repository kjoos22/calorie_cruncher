class AddCaloriesExpendedToDays < ActiveRecord::Migration[6.1]
  def change
    add_column :days, :calories_expended, :integer
  end
end
