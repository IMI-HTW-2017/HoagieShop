# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bread.create([
    {name: "Honey Oat", count: 52},
    {name: "Flatbread", count: 23},
    {name: "Italian Cheese & Oregano", count: 14},
    {name: "Whole Wheat", count: 34}
])

MainIngredient.create([
    {name: "Chicken Teriaki", count: 32, price: 899},
    {name: "Beef", count: 13, price: 799},
    {name: "Ham & Bacon", count: 42, price: 999},
    {name: "Tuna", count: 37, price: 699}
])

Ingredient.create([
    {name: "Lettuce", count: 52},
    {name: "Corn", count: 46},
    {name: "Cucumber", count: 38},
    {name: "Pepperoni", count: 32},
    {name: "Bell Pepper", count: 39},
    {name: "Tomatoes", count: 27},
])

Sauce.create([
    {name: "Honey Mustard", count: 35},
    {name: "BBQ", count: 29},
    {name: "Sweet Onion", count: 17},
    {name: "Mayonnaise", count: 25}
])