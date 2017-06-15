Rails.application.routes.draw do

  devise_for :users
  resources :ewidencjas
  root to: 'pages#index'

  get 'hello', to: 'pages#contact'

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
