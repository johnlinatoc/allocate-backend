class CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories
  end

  def show
    category = Category.find_by(id: params[:id])
    render json: category
  end

  def user_categories
    user = User.find(params[:id])
    monthly_budget_ids = user.monthly_budgets.pluck(:id)
    p monthly_budget_ids
    categories = Category.where(monthly_budget_id: monthly_budget_ids)
    render json: categories
  end

  def create
    p 'createCategorycreateCategorycreateCategorycreateCategory'
    p params
    budget = Category.create(
      name: params[:category_name],
      budget: params[:category_budget],
      monthly_budget_id: params[:month_id],
    )
    render json: budget
  end

  # month_id,
  # category_name,
  # category_budget,
  # user_id: this.props.userInfo.id

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
