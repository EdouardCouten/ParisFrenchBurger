Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only:  [:index, :show] do
  resources :burgers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Inventer le routing CRUD
  #lire un restaurant
  #créer un restaurant
  #updater un Restaurant

  end
end
