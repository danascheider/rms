Rails.application.routes.draw do
  get 'site/index'

  root to: "site#index"

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :users do 
    resources :contacts, shallow: true
  end
end
