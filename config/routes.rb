Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/answers/results', to: 'answers#results'
  get '/careers/suggestions', to: 'careers#suggestions'
  resources :answers, only: [:new, :create]
  resources :careers, only: [:show] do
    resources :lists, only: :create
  end
  resources :todos, only: [:destroy, :update]
  resources :lists, only: [:show] do
    resources :todos, only: :create
  end
end
