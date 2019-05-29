Rails.application.routes.draw do
  get 'registers/new'
  get 'registers/registred'
  
  root 'sessions#new'
  
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'

  post 'anamneses/new' => 'anamneses#create'
  
  resources :bridge_extension
  resources :concerns
  resources :cooper
  resources :cutaneous_fold
  resources :dynometry
  resources :ankle_mobility
  resources :anamneses
  resources :athletes
  resources :sessions
  resources :users
  resources :physical
  resources :questionary
  resources :tegner_lysholm
  resources :yo_yo
  resources :impulsion
  resources :perimetry
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
