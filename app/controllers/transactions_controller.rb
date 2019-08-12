class TransactionsController < ApplicationController
  def index
    transactions = Transaction.all
    render json: transactions
  end

  def show
    transaction = Transaction.find_by(id: params[:id])
    render json: transaction
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
