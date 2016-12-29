Rails.application.routes.draw do
  resources :houses

  delete '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]

  root 'houses#index'
  resources :users

  delete '/house/:id' => 'houses#destroy', as: :remove
end
