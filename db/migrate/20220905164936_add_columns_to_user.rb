class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :countries_cooked, :integer
    add_column :users, :location, :string
    add_column :users, :favourite_dish, :string
    add_column :users, :rank, :string
  end
end
