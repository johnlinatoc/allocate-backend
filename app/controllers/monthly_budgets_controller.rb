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

  # def create
  #   transaction = Transaction.create()
  #   render json: { }
  # end

  # def update
  #     tranactions = transaction.find_by(id: params[:id])
  #     tranactions.update()
  #     render json: { }
  # end

  # def destroy
  #     transaction = Transaction.find_by(id: params[:id])
  #     transaction.destroy
  #     render json: {}, status: :no_content
  # end
end
