# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
mcdonalds = { name: "McDonald's", address: "Marseille", phone_number: 0400000000, category: "chinese" }
kfc = { name: "KFC", address: "La Seyne-sur-Mer", phone_number: 0400000000, category: "italian" }
burgerking = { name: "Burger King", address: "Aubagne", phone_number: 0400000000, category: "japanese" }
pizzahut = { name: "Pizza Hut", address: "Toulon", phone_number: 0400000000, category: "french" }
otacos = { name: "O'Tacos", address: "Les Pennes-Mirabeau", phone_number: 0400000000, category: "belgian" }

[mcdonalds, kfc, burgerking, pizzahut, otacos].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
