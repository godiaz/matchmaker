Rails.application.routes.draw do
  root to: 'users#new'

  resources :users

  get '/thanks', to: 'pages#thanks'
  get '/privacypolicy', to: 'pages#privacypolicy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
