class TransactionsController < ApplicationController
  def index
    transactions = Transaction.all
    render json: transactions
  end

  def show
    transaction = Transaction.find_by(id: params[:id])
    render json: transaction
  end

  def user_transactions
    user = User.find_by(id: params[:id])
    transactions = Transaction.where(user_id: user.id)
    render json: transactions
  end

  def create
    p params
    transaction = Transaction.create(
      name: params[:name],
      user_id: params[:user_id],
      category_id: params[:category_id],
      monthly_budget_id: params[:monthly_budget_id],
      amount: params[:amount]
    )
    render json: transaction
  end

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
