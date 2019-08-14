class MonthlyBudgetsController < ApplicationController
  def index
    monthly_budgets = MonthlyBudget.all
    render json: monthly_budgets
  end

  def show
    monthly_budget = MonthlyBudget.find_by(id: params[:id])
    render json: monthly_budget
  end

  def user_months
    user = User.find_by(id: params[:id])
    months = MonthlyBudget.where(user_id: user.id)
    render json: months
  end

  def create
    p 'createMonthlyBudgetcreateMonthlyBudgetcreateMonthlyBudgetcreateMonthlyBudget'
    p params
    budget = MonthlyBudget.create(
      name: params[:month_name],
      year: params[:year],
      monthly_budget: params[:monthly_income],
      user_id: params[:user_id]
    )
    render json: budget
  end

  # def update
  #     tranactions = transaction.find_by(id: params[:id])
  #     tranactions.update()
  #     render json: { }
  # end

  # def destroy
  #     transaction = Transaction.find_by(id: params[:id])
  #     transaction.destroy
      # render json: {}, status: :no_content
  # end
end
