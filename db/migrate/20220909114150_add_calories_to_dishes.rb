class AddCaloriesToDishes < ActiveRecord::Migration[7.0]
  def change
    add_column :dishes, :calories, :integer
  end
end
