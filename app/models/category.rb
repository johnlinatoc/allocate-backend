class Category < ApplicationRecord
  belongs_to :monthly_budget
  has_many :transactions
end
