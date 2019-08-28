class ExpensesController < ApplicationController
  def index
    expenses = Expense.all
    render json: expenses
  end

  def show
    expense = Expense.find_by(id: params[:id])
    render json: expense
  end

  def user_expenses
    user = User.find_by(id: params[:id])
    expenses = Expense.where(user_id: user.id)
    render json: expenses
  end

  def create
    p params
    expense = Expense.create(
      name: params[:name],
      user_id: params[:user_id],
      category_id: params[:category_id],
      monthly_budget_id: params[:monthly_budget_id],
      amount: params[:amount]
    )
    render json: expense
  end

  # def update
  #     tranactions = expense.find_by(id: params[:id])
  #     tranactions.update()
  #     render json: { }
  # end

  # def destroy
  #     expense = Expense.find_by(id: params[:id])
  #     expense.destroy
  #     render json: {}, status: :no_content
  # end
end
