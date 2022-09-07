Rails.application.routes.draw do
  get 'favourites/index'
  get 'cooked_dishes/create'
  devise_for :users
  root to: "pages#home"

  resources :users, only: [:show] do
    # get '/profile', to: 'user#profile'
  end

  resources :dishes, only: [:show] do
    resources :cooked_dishes, only: [:create]
    resources :favourites, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
