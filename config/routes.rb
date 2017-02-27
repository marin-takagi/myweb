Rails.application.routes.draw do
  root 'static_pages#home'
  get 'profiel' =>  'static_pages#profiel'
  get 'index' => 'works#index'
  get 'show' => 'works#show'

  resources :works
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
