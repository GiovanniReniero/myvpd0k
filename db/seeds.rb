# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "json"
# require_relative '../../.env'


# def api_seeds
  # # url = "https://api.spoonacular.com/recipes/complexSearch?apiKey=#{spoonacular_api}&query=pasta"
  # recipies_serialized = URI.open(url).read
  # recipes = JSON.parse(recipies_serialized)["results"]
  # recipe.each do |recipe|
    # puts "Creating recipie #{title}"
    # recipe = Recipe.new(
      # name: recipe["title"]
    # )
# 
  # 
# end

def seeder
  rating = (1..5).to_a.sample
  n=1
  while n<11
    @recipe = Recipe.new(
      name: "pasta_dish #{n}",
      instructions: Faker::Quotes::Shakespeare.hamlet_quote
    )
    
    @review = Review.new(
      rating: "#{rating}",
      comment: Faker::Lorem.paragraph_by_chars 
      )
      @review.recipe = @recipe 
      @recipe.save
      @review.save
      n+=1
  end

  20.times do
    @ingredient = Ingredient.new(
      name: Faker::Food.ingredient
    )
    @ingredient.save
  end

end


puts "Cleansing Database..."
Recipe.destroy_all
Ingredient.destroy_all
puts "... Database cleansed"
puts "Seeding Databse....."
seeder
puts "Seeding locally.... #{Recipe.count} recipe seeds"
puts "Seeding locally.... #{Review.count} review seeds"
puts "Seeding locally.... #{Ingredient.count} ingredient seeds"
# puts "Seeding remotely.... #{Review.count} review seeds"
# puts "Seeding Completed!!!.... #{Ingredient.count} bookmark seeds"
# puts "Seeding Completed!!!.... #{Quantity.count} bookmark seeds"



