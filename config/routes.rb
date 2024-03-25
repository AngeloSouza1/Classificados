Rails.application.routes.draw do
  root to: "home#show"
  get 'show_home', to: 'home#show'

  resources :ads, only: [:new, :create]
  resources :users, only: [:new, :create]
  #login
  resources :sessions, only: [:new, :create] do
    collection do
      delete "sign_out", to: "sessions#destroy", as: "sign_out"
    end
  end
end
