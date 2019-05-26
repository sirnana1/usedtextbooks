Rails.application.routes.draw do
  root 'books#index'
  devise_for :users


  get 'pages/about'
  get 'pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
end
