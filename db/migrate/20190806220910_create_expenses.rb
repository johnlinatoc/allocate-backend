class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :name
      t.float :amount
      t.references :user, foreign_key: true
      t.references :monthly_budget, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
