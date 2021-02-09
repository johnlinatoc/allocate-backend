class User < ApplicationRecord
  has_secure_password
  has_many :monthly_budgets, dependent: :destroy
  has_many :expenses, dependent: :destroy
  validates :username, uniqueness: { case_sensitive: false }

  def addMonths
    monthKey = {
      1 => 'January',
      2 => 'February',
      3 => 'March',
      4 => 'April',
      5 => 'May',
      6 => 'June',
      7 => 'July',
      8 => 'August',
      9 => 'September',
      10 => 'October',
      11 => 'November',
      12 => 'December'
    }

    userMonth = self.created_at.month
    year = self.created_at.year
    counter = 1
    lastMonth = 13

    while counter < lastMonth
      MonthlyBudget.create(
        name: monthKey[userMonth],
        year: year,
        user_id: self.id
      )
      if userMonth == 12
        userMonth = 1
        year += 1
      else
        userMonth += 1
      end

      counter += 1
    end

  end
end
