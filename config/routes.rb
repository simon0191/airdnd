Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"

  resources :places, only: [:index, :show, :new, :create, :edit, :update]
  # resources :places, only: [:index, :show, :new, :create, :edit, :update]

end
