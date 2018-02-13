Rails.application.routes.draw do
  root 'users#index'

  get 'register' => 'users#new'
  post 'users' => 'users#create'
  get 'edit' => 'users#edit'
  get 'users/:id' => 'users#show'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
