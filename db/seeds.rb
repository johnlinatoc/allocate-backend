# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Transaction.all.each{|u| u.delete}
CategoryItem.all.each{|u| u.delete}
Category.all.each{|u| u.delete}
MonthlyBudget.all.each{|u| u.delete}
User.all.each{|u| u.delete}

User.create(username: 'John')
MonthlyBudget.create(name: 'January', user_id: 1)

Category.create(name: 'Shopping', monthly_budget_id: 1)
Category.create(name: 'Transportation', monthly_budget_id: 1)
Category.create(name: 'Car Payment', monthly_budget_id: 1)
Category.create(name: 'Food', monthly_budget_id: 1)

CategoryItem.create(name: 'Clothes', category_id: 1)
CategoryItem.create(name: 'Shoes', category_id: 1)
CategoryItem.create(name: 'Gas', category_id: 2)
CategoryItem.create(name: 'Oil Change', category_id: 2)
CategoryItem.create(name: 'Prius', category_id: 3)
CategoryItem.create(name: 'Takeout', category_id: 4)
CategoryItem.create(name: 'Groceries', category_id: 4)

Transaction.create(name: 'Target', user_id: 1, monthly_budget_id: 1, category_id: 1, category_item_id: 1)
Transaction.create(name: 'DSW', user_id: 1, monthly_budget_id: 1, category_id: 1, category_item_id: 2)
Transaction.create(name: 'Shell', user_id: 1, monthly_budget_id: 1, category_id: 1, category_item_id: 3)
Transaction.create(name: 'BP', user_id: 1, monthly_budget_id: 1, category_id: 1, category_item_id: 3)
Transaction.create(name: 'Jiffy Lube', user_id: 1, monthly_budget_id: 1, category_id: 1, category_item_id: 4)
Transaction.create(name: 'Prius Payment', user_id: 1, monthly_budget_id: 1, category_id: 1, category_item_id: 5)
Transaction.create(name: 'Panda Express', user_id: 1, monthly_budget_id: 1, category_id: 1, category_item_id: 6)
Transaction.create(name: 'Costco', user_id: 1, monthly_budget_id: 1, category_id: 1, category_item_id: 7)
