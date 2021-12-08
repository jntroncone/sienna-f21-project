Rails.application.routes.draw do
  get 'conservations', to: 'conservation#index', as: 'conservations'
  post 'conservations', to: 'conservations#create'
  get 'conservations/new', to: 'conservations#new', as: 'new_conservation'
  get 'conservations/:id', to: 'conservations#show', as: 'conservation'
 
  get 'conversations/:conversation_id/messages', to: 'messages#index', as: 'conversation_messages'
  get 'conversations/:conversation_id/messages/new', to: 'messages#new', as: 'new_conversation_messages'
  post 'conversations/:conversation_id/messages', to: 'messages#create'
  patch '/conversations/:conversation_id/messages/:id', to: 'messages#update'
  put '/conversations/:conversation_id/messages/:id', to: 'messages#update'

  get 'pages/gallery', to: 'pages#gallery', as:'gallery'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy] do
    resources :likes
    resources :comments


  end
  

end