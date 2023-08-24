Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :grannies do
    resources :reservations, only: [:create]
  end
  resources :reservations, only: [:update, :destroy]
  get 'profile/:id', to: 'pages#profile', as: 'profile'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
