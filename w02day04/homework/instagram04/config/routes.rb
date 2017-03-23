Rails.application.routes.draw do



  # get 'following/create'
  # post 'users/:user_id/followers' => 'followers#create'


  get 'pictures' => 'pictures#index'

  get '/logout' , to: 'sessions#destroy'

  root "static#home"

  get 'pictures/:id' => 'pictures#show'

  get 'picture/new' => 'pictures#new'

  resources :users do
    resources :followers, only: [:create, :delete]
  end

  resources :sessions, only: [:new, :create, :delete]


  resources :pictures do
    resources :comments, only: [:create]
    resources :likes, only: [:create]

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
