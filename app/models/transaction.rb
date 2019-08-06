class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :monthly_budget
  belongs_to :category
end
