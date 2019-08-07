class CreateMonthlyBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :monthly_budgets do |t|
      t.string :name
      t.float :monthly_budget
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
