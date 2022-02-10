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

  curry = victor.recipes.create!( name: "curry" , preparation_time: "2 hours", cooking_time: "20 minutes", description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", public: false )
  thyme = tufoin.recipes.create!( name: "thyme" , preparation_time: "3 hours", cooking_time: "10 minutes", description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", public: false )
  salt = tolu.recipes.create!( name: "salt" , preparation_time: "4 hours", cooking_time: "30 minutes", description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", public: true )
  maggi = tolu.recipes.create!( name: "maggi" , preparation_time: "4 hours", cooking_time: "30 minutes", description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", public: true )
  pepper = tolu.recipes.create!( name: "pepper" , preparation_time: "4 hours", cooking_time: "30 minutes", description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", public: true )

  tufoin_inventory = tufoin.inventories.create!(name: 'tufoin\'s store')
  tolu_inventory = tolu.inventories.create!(name: 'tolu\'s store')
  tolu_inventory2 = tolu.inventories.create!(name: 'tolu\'s store2')
  tolu_inventory3 = tolu.inventories.create!(name: 'tolu\'s store3')
  victor_inventory = victor.inventories.create!(name: 'victor\'s store')

  
