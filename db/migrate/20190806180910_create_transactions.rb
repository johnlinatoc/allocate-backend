class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :monthly_budget, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
