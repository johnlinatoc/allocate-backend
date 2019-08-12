# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_06_220910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.float "budget"
    t.bigint "monthly_budget_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monthly_budget_id"], name: "index_categories_on_monthly_budget_id"
  end

  create_table "monthly_budgets", force: :cascade do |t|
    t.string "name"
    t.float "monthly_budget"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_monthly_budgets_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "name"
    t.float "amount"
    t.bigint "user_id"
    t.bigint "monthly_budget_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_transactions_on_category_id"
    t.index ["monthly_budget_id"], name: "index_transactions_on_monthly_budget_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "categories", "monthly_budgets"
  add_foreign_key "monthly_budgets", "users"
  add_foreign_key "transactions", "categories"
  add_foreign_key "transactions", "monthly_budgets"
  add_foreign_key "transactions", "users"
end
