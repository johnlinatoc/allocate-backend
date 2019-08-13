class CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories
  end

  def show
    p '=========tytytyty============l=l=l=l=l=[]'
    category = Category.find_by(id: params[:id])
    render json: category
  end

  def user_categories
    p '/,/,/,/,/./././,//,/././,/,,/,/././,'

    user = User.find(params[:id])
    monthly_budget_ids = user.monthly_budgets.pluck(:id)
    p monthly_budget_ids
    categories = Category.where(monthly_budget_id: monthly_budget_ids)
    render json: categories
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
