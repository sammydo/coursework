Rails.application.routes.draw do
  get 'following/create'

  get 'likes/create'

  get 'comments/create'

  get 'pictures' => 'pictures#index'

  root "static#home"

  get 'pictures/:id' => 'pictures#show'

  get 'picture/new' => 'pictures#new'

  resources :pictures do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
    resources :following, only: [:create]


  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
