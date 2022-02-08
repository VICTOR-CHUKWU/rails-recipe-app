# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  tufoin = User.create!( name: "Tufoin" ,role: "user")
  victor = User.create!( name: "victor" ,role: "user")
  tolu = User.create!( name: "Tolu" ,role: "admin")

  rice = victor.foods.create!( name: "Rice" , measurement_unit: "kg", price: 2000 )
  plantain = tufoin.foods.create!( name: "plantain" , measurement_unit: "kg", price: 1000 )
  chicken = tufoin.foods.create!( name: "chicken breast" , measurement_unit: "kg", price: 3000 )
  pizza = tolu.foods.create!( name: "pizza" , measurement_unit: "kg", price: 6000 )
  soup = tolu.foods.create!( name: "pepper soup" , measurement_unit: "kg", price: 3000 )
#   Character.create(name: "Luke", movie: movies.first)

