class User < ApplicationRecord
  has_secure_password
  has_many :monthly_budgets
  has_many :transactions
  validates :username, uniqueness: { case_sensitive: false }
end
