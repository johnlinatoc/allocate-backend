class MonthlyBudget < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :expenses
end
