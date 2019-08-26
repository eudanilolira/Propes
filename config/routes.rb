Rails.application.routes.draw do
  get 'registers/new'
  get 'registers/registred'
  
  root 'sessions#new'

  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
  
  post 'anamneses/new' => 'anamneses#create'
  post 'bridge_extensions/new' => 'bridge_extensions#create'
  post 'concerns/new' => 'concerns#create'
  post 'coopers/new' => 'coopers#create'
  post 'cutaneous_folds/new' => 'cutaneous_folds#create'
  post 'dynometries/new' => 'dynometries#create'
  post 'physicals/new' => 'physicals#create'
  post 'questionaries/new' => 'questionaries#create'
  post 'tegner_lysholms/new' => 'tegner_lysholms#create'
  post 'yo_yos/new' => 'yo_yos#create'
  post 'impulsions/new' => 'impulsions#create'
  post 'perimetries/new' => 'perimetries#create'
  post 'ankle_mobilities/new' => 'ankle_mobilities#create'
  post 'yo_tests/new' => 'yo_tests#create'

  post 'list_evaluations/set_list' => 'list_evaluations#set_list'
  
  get 'users/unapproveds' => 'users#unapproveds'
  post 'users/approve' => 'users#approve'

  post 'anamneses/:id' => 'anamneses#edit'
  post 'bridge_extensions/:id' => 'bridge_extensions#edit'
  post 'concerns/:id' => 'concerns#edit'
  post 'coopers/:id' => 'coopers#edit'
  post 'cutaneous_folds/:id' => 'cutaneous_folds#edit'
  post 'dynometries/:id' => 'dynometries#edit'
  post 'physicals/:id' => 'physicals#edit'
  post 'questionaries/:id' => 'questionaries#edit'
  post 'tegner_lysholms/:id' => 'tegner_lysholms#edit'
  post 'yo_yos/:id' => 'yo_yos#edit'
  post 'impulsions/:id' => 'impulsions#edit'
  post 'perimetries/:id' => 'perimetries#edit'
  post 'ankle_mobilities/:id' => 'ankle_mobilities#edit'
  post 'yo_tests/:id' => 'yo_tests#edit'


  resources :yo_tests
  resources :bridge_extensions
  resources :concerns
  resources :coopers
  resources :cutaneous_folds
  resources :dynometries
  resources :ankle_mobilities
  resources :anamneses
  resources :athletes
  resources :sessions
  resources :users
  resources :physicals
  resources :questionaries
  resources :tegner_lysholms
  resources :yo_yos
  resources :impulsions
  resources :perimetries
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
