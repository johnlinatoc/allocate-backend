class User < ApplicationRecord
  has_many :monthly_budgets
  has_many :transactions
end
