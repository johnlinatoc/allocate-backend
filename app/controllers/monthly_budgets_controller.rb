class MonthlyBudgetsController < ApplicationController
  skip_before_action :authorized

  def index
    monthly_budgets = MonthlyBudget.all
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
end
