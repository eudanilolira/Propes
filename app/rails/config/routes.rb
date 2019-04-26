Rails.application.routes.draw do
  get 'users/new'
  root 'sessions#new'
  
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
  
  
  resources :sessions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
