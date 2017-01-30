Rails.application.routes.draw do
  devise_for :users
  resources :users, except: [:edit, :update]
  resources :posts

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
