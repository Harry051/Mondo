class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :title
      t.text :ingredients
      t.text :recipe
      t.float :average_rating
      t.string :dietary_filters
      t.integer :prep_time
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
