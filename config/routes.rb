Rails.application.routes.draw do
  get 'registers/new'
  get 'registers/registred'
  
  root 'sessions#new'
  
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'

  post 'anamneses/new' => 'anamneses#create'

  resources :anamneses
  resources :athletes
  resources :sessions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
