Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, :monthly_budgets, :categories, :transactions
  # namespace :api do
  #     namespace :v1 do
  #       resources :boardgames
  #       # resources :users
  #       post '/auth', to: 'auth#create'
  #       get '/current_user', to: 'auth#show'
  #       post '/current_user', to: 'users#create'
  #       get '/current_user/:id', to: 'users#show'
  #       patch '/current_user/:id', to: 'users#update'
  #       delete '/current_user/:id', to: 'users#destroy'
  #     end
  #   end

end
