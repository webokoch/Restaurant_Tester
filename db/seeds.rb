# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'clearing database'

Restaurant.destroy_all

puts 'generating Restaurants'

r1 = Restaurant.new(
    name: 'YumYum',
    cuisine: 'Korean',
    location: 'Mitte'
)
r1.save

r2 = Restaurant.new(
    name: 'Coffee Table',
    cuisine: 'American',
    location: 'Mitte'
)
r2.save

r3 = Restaurant.new(
    name: 'Burger Town',
    cuisine: 'American',
    location: 'Kreuzberg'
)
r3.save

r4 = Restaurant.new(
    name: 'Golden Palace',
    cuisine: 'Chinese',
    location: 'Mitte'
)
r4.save

r5 = Restaurant.new(
    name: 'Sushi & Ramen',
    cuisine: 'Japanese',
    location: 'Kreuzberg'
)
r5.save

r6 = Restaurant.new(
    name: 'Napoli',
    cuisine: 'Italian',
    location: 'Friedrichshain'
)
r6.save

r7 = Restaurant.new(
    name: 'Kebap King',
    cuisine: 'Turkish',
    location: 'Kreuzberg'
)
r7.save

r8 = Restaurant.new(
    name: 'Babylon',
    cuisine: 'Mediterranean',
    location: 'Friedrichshain'
)
r8.save

puts 'Done...'