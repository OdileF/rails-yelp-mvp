# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Restaurant.destroy_all

first_restaurant = Restaurant.create(name: "The French Place", address:"France", category: "french")
second_restaurant = Restaurant.create(name: "The Belgian Place", address:"Belgic", category: "belgian")
third_restaurant = Restaurant.create(name: "The Japanese Place", address:"Japan", category: "japanese")
fourth_restaurant = Restaurant.create(name: "The Chinese Place", address:"China", category: "chinese")
fifth_restaurant = Restaurant.create(name: "The Italian Place", address:"Italy", category: "italian")

puts "#{Restaurant.count} restaurants created"
