class CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories
  end

  def show
    category = Category.find_by(id: params[:id])
    render json: category
  end

  def create
    categories = params[:categories]

    categories.each do |category|
      Category.create(
        name: category[:name],
        budget: category[:amount],
        monthly_budget_id: params[:month_id]
      )
    end

    render json: categories
  end

  def user_categories
    user = User.find(params[:id])
    monthly_budget_ids = user.monthly_budgets.pluck(:id)
    categories = Category.where(monthly_budget_id: monthly_budget_ids)
    render json: categories
  end

  # def most_popular_category
  #   counts = Hash.new
  #   Expense.all.each do |trans|
  #     counts[trans.category_id] += 1
  #   end
  #
  #   most_popular_category_id = counts.sort_by {|id, count| count}.reverse.first[0]
  #   Category.all.find_by(id: b)
  # end
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
