# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Puts "Cleaning.database..."
Cocktail.destroy_all

Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')

require 'faker'

puts "Creating some cocktails..."
5.times do
  cocktail = Cocktail.create(
    name: Faker::Cannabis.brand
  )
  puts "Cocktail with id #{cocktail.id} was created"
end

puts "Created #{Cocktail.count} cocktails"
