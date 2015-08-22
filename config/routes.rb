Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]
  root 'users#new'
  get     'login'   => 'sessions#new'
  post    'login'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'

end
