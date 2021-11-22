Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  resources :users, only: [:show]
  resources :posts, only: [:new, :create]

=======
  resources :users, only: [:show, :edit]
>>>>>>> 22912f73a004ee5efb8a45399e26bbef04bedfb6
end
