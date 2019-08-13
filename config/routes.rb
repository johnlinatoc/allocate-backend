Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :monthly_budgets, :categories, :transactions
  # namespace :api do
      # namespace :v1 do
        # resources :boardgames
        # resources :users
        resources :users, only: [:create]
        get '/profile' , to: 'users#profile'
        get '/users/:id/categories' , to: 'categories#user_categories'
        get '/users/:id/transactions' , to: 'transactions#user_transactions'
        get '/users/:id/months' , to: 'monthly_budgets#user_months'
        post '/auth', to: 'auth#create'
        get '/current_user', to: 'auth#show'
        post '/current_user', to: 'users#create'
        get '/current_user/:id', to: 'users#show'
        patch '/current_user/:id', to: 'users#update'
        delete '/current_user/:id', to: 'users#destroy'
    #   end
    # end

end
