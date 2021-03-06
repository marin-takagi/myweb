Rails.application.routes.draw do

  root 'static_pages#home'
  get 'profiel' =>  'static_pages#profiel'
  get 'index' => 'works#index'
  get 'show' => 'works#show'
  get 'contact_new' => 'contacts#new'
  post 'contact_new' => 'contacts#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :works
  resources :contacts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
