Rails.application.routes.draw do
  root 'users#index'

  get 'register' => 'users#new'
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show'
end
