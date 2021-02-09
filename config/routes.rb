Rails
  .application
  .routes
  .draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    post '/auth', to: 'auth#create'
    get '/current_user', to: 'auth#show'

    get '/profile', to: 'users#profile'
    get '/current_user/:id', to: 'users#show'
    post '/current_user', to: 'users#create'
    delete '/current_user', to: 'users#destroy'

    get '/users/:id/categories', to: 'categories#user_categories'

    get '/users/:id/expenses', to: 'expenses#user_expenses'
    
    get '/users/:id/months', to: 'monthly_budgets#user_months'
    patch '/new_budget', to: 'monthly_budgets#editMonthlyIncome'

    resources :monthly_budgets, :categories, :expenses
    resources :users, except: [:new, :show, :patch]
  end
