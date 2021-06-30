class AddTefToDays < ActiveRecord::Migration[6.1]
  def change
    add_column :days, :tef, :integer
  end
end
