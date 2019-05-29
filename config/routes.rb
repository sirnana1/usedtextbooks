Rails.application.routes.draw do

  resources :orders
  root 'books#index'
  devise_for :users

  get 'seller' => "books#seller"
  get 'sales'  => "orders#sales"
  get 'purchases' => "orders#purchases"
  get 'pages/about'
  get 'pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
    resources :orders
  end

  end
