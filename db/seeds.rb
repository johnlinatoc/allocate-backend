# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Transaction.destroy_all
# Category.destroy_all
# MonthlyBudget.destroy_all
# User.destroy_all


User.create(username: 'John', password_digest: 123)

MonthlyBudget.create(name: 'January', user_id: 1, monthly_budget: 2000)

Category.create(name: 'Shopping', monthly_budget_id: 1, budget: 100)
Category.create(name: 'Transportation', monthly_budget_id: 1, budget: 100)
Category.create(name: 'Car Payment', monthly_budget_id: 1, budget: 100)
Category.create(name: 'Food', monthly_budget_id: 1, budget: 100)


Transaction.create(name: 'Target', user_id: 1, monthly_budget_id: 1, category_id: 1, amount: 15)
Transaction.create(name: 'DSW', user_id: 1, monthly_budget_id: 1, category_id: 2, amount: 14)
Transaction.create(name: 'Shell', user_id: 1, monthly_budget_id: 1, category_id: 2, amount: 44)
Transaction.create(name: 'BP', user_id: 1, monthly_budget_id: 1, category_id: 2, amount: 24)
Transaction.create(name: 'Jiffy Lube', user_id: 1, monthly_budget_id: 1, category_id: 2, amount: 65)
Transaction.create(name: 'Prius Payment', user_id: 1, monthly_budget_id: 1, category_id: 3, amount: 664)
Transaction.create(name: 'Panda Express', user_id: 1, monthly_budget_id: 1, category_id: 4, amount: 44)
Transaction.create(name: 'Costco', user_id: 1, monthly_budget_id: 1, category_id: 4, amount: 34)
