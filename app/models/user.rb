class User < ApplicationRecord
  has_secure_password
  has_many :monthly_budgets, dependent: :destroy
  has_many :expenses, dependent: :destroy
  validates :username, uniqueness: { case_sensitive: false }
end
