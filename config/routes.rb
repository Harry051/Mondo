Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # independent route for favs
  resources :favourites, only: [:index, :destroy]

  resources :users, only: [:show] do
    # get '/profile', to: 'users#profile'
  end

  resources :dishes, only: [:show] do
    get '/ingredients', to: 'dishes#ingredients'
    get '/recipes', to: 'dishes#recipe'
    resources :cooked_dishes, only: [:create]
    resources :favourites, only: [:create]
    resources :reviews, only: %i[new create]
  end
end
