Rails.application.routes.draw do
  get 'pictures' => 'pictures#index'

  root "static#home"

  get 'pictures/:id' => 'pictures#show'

  get 'picture/new' => 'pictures#new'

  resources :pictures

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
