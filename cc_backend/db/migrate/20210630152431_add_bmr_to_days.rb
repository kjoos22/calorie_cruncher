class AddBmrToDays < ActiveRecord::Migration[6.1]
  def change
    add_column :days, :bmr, :integer
  end
end
