# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'John')
MonthlyBudget.create(name: 'January', user_id: 1)
Category.create(name: 'Shopping', monthly_budget_id: 1)
CategoryItem.create(name: 'Clothes', category_id: 1)
Transaction.create(name: 'Target', user_id: 1, monthly_budget_id: 1, category_id: 1, category_item_id: 1)
