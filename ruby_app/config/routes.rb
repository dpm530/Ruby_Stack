Rails.application.routes.draw do

   root 'application#index'
   get 'login' => 'application#login'

   resources :lenders

   resources :borrowers

   post '/session/login' => 'sessions#create'
   delete '/logout/:id' => 'sessions#destroy'

end
