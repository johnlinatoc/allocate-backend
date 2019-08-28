class User < ApplicationRecord
  has_secure_password
  has_many :monthly_budgets
  has_many :expenses
  validates :username, uniqueness: { case_sensitive: false }
end
