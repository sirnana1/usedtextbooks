Rails.application.routes.draw do
  get 'subjects/create'
  get 'subjects/index'
  get 'subjects/new'
  get 'subjects/update'
  get 'subjects/show'
  get 'subjects/destroy'
  root 'books#index'
  get 'pages/about'
  get 'pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
end
