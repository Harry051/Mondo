class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :title
      t.text :description
      t.text :ingredients, array: true, default: []
      t.text :recipe, array: true, default: []
      t.float :average_rating
      t.text :categories, array: true, default: []
      t.jsonb :times
      t.references :country, null: false, foreign_key: true
      t.timestamps
    end
  end
end
