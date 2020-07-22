Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/answers/results', to: 'answers#results'
  resources :answers, only: [:new, :create]
end
