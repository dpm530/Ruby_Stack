Rails.application.routes.draw do


  root 'users#index'

  get 'register' => 'users#new'
  post 'users' => 'users#create'
  get 'edit/:id' => 'users#edit'
  get 'users/:id' => 'users#show'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'secrets/index' => 'secrets#index'
  post 'create/:id' => 'secrets#create'
  delete 'secrets/:id' => 'secrets#destroy'

  post 'likes/:id/create' => 'likes#create'
  delete 'likes/:id/destroy' => 'likes#destroy'
end
