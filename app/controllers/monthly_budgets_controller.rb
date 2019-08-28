class MonthlyBudgetsController < ApplicationController
  def index
    monthly_budgets = MonthlyBudget.all
    p monthly_budgets
    sorted_months = monthly_budgets.sort_by { |obj| obj.created_at }
    render json: sorted_months
  end

  def user_months
    user = User.find_by(id: params[:id])
    months = MonthlyBudget.where(user_id: user.id)
    render json: months
  end

  def create
    budget = MonthlyBudget.create(
      name: params[:month_name],
      year: params[:year],
      monthly_budget: params[:monthly_income],
      user_id: params[:user_id]
    )
    render json: budget
  end

  def newMonthBudget
    month = MonthlyBudget.find_by(id: params[:month_id])
    month.update( monthly_budget: params[:monthly_income] )
    render json: month
  end

  # def destroy
  #     expense = Expense.find_by(id: params[:id])
  #     expense.destroy
      # render json: {}, status: :no_content
  # end
end
