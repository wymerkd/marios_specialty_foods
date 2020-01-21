# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Hacker.noun)
end

p "Created #{Product.count} products"



Review.destroy_all

20.times do |index|
  Project.create!(review: Faker::Hacker.noun)
end

p "Created #{Project.count} projects"
