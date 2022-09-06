# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Country.destroy_all
Dish.destroy_all

country = Country.create(name: 'UK', story: 'colonizers AF')
Dish.create!(title: 'fish fingers', ingredients: 'cod, breadcrumbs', recipe: 'oven 200C', average_rating: 4.9, dietary_filters: 'pescetarian', prep_time: 12, country: country)
