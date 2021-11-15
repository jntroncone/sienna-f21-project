Rails.application.routes.draw do
  devise_for :users
  
  #root to: redirect('/devise/sessions/new')
  get 'login', to: 'pages#login', as: 'login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
