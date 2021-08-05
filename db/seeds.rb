# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




puts "Cleansing Database..."
Recipe.destroy_all
List.destroy_all
Bookmark.destroy_all
puts "... Database cleansed"
puts "Seeding Databse....."
seeder
api_seeds
puts "Seeding locally.... #{Movie.count} movie seeds"
puts "Seeding remotely.... #{List.count} list seeds"
puts "Seeding Completed!!!.... #{Bookmark.count} bookmark seeds"



