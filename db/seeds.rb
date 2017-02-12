# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do

  ingredient1 = Faker::Food.ingredient
  ingredient2 = Faker::Food.ingredient
  spice1 = Faker::Food.spice
  spice1_amount = Faker::Food.measurement
  spice2 = Faker::Food.spice
  spice2_amount = Faker::Food.measurement

  Food.create(ingredient1: ingredient1,
              ingredient2: ingredient2,
              spice1: spice1,
              spice1amount: spice1_amount,
              spice2: spice2,
              spice2amount: spice2_amount
              )
end 