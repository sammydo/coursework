Rails.application.routes.draw do

     get "portfolio/education_index"

     get "portfolio/technical_index"

     get "portfolio/work_experience"

     get "portfolio/portfolio"




  resources :portfolio

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
