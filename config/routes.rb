Rails.application.routes.draw do

  get 'events/new'
  post 'events/create'
  get 'events' => 'events#index'

  resources :users, only: [:new, :create, :show]
  root 'users#new'

  get     'login'   => 'sessions#new'
  post    'login'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'


end
