Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # post '/food/new', to: 'food#create', as: '/food/add'

  resources :food

end
