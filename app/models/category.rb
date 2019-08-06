class Category < ApplicationRecord
  belongs_to :monthly_budget
  has_many :transactions
  has_many :category_items
end
