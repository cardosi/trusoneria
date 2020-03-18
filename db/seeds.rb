# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pizza.create(name: "Trusoneria Special", description: "Forget Passwords and Eat This Pie")
Pizza.create(name: "Cam's Creation", description: "It's clean and it works")
Pizza.create(name: "Yum Disc", description: "Three hundred and sixty degrees of YUM")

Topping.create(name: "Pepperoni")
Topping.create(name: "Sausage")
Topping.create(name: "Onion")
Topping.create(name: "Mushroom")
Topping.create(name: "Ricotta")
Topping.create(name: "Giardiniera")

PizzaTopping.create(pizza_id: 1, topping_id: rand(1..2))
PizzaTopping.create(pizza_id: 1, topping_id: rand(3..4))
PizzaTopping.create(pizza_id: 1, topping_id: rand(5..6))
PizzaTopping.create(pizza_id: 2, topping_id: rand(1..2))
PizzaTopping.create(pizza_id: 2, topping_id: rand(3..4))
PizzaTopping.create(pizza_id: 2, topping_id: rand(5..6))
PizzaTopping.create(pizza_id: 3, topping_id: rand(1..2))
PizzaTopping.create(pizza_id: 3, topping_id: rand(3..4))
PizzaTopping.create(pizza_id: 3, topping_id: rand(5..6))



