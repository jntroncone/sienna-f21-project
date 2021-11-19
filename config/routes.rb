Rails.application.routes.draw do
  get 'conservations', to: 'conservation#index', as: 'conservations'
  post 'conservations', to: 'conservations#create'
  get 'conservations/new', to: 'conservations#new', as: 'new_conservation'
  get 'conservations/:id', to: 'conservations#show', as: 'conservation'
 
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
end
