Rails.application.routes.draw do
  get 'login', to: 'user_sessions#new'  
  post 'login', to: 'user_sessions#create'  
  delete 'logout', to: 'user_sessions#destroy'
  resources :users, only: %i(new create)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :tweet
  root to: 'users#new'
end
