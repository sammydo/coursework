Rails.application.routes.draw do
  get 'comments/create'

  get 'pictures' => 'pictures#index'

  root "static#home"

  get 'pictures/:id' => 'pictures#show'

  get 'picture/new' => 'pictures#new'

  resources :pictures do
    resources :comments, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
