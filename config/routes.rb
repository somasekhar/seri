Rails.application.routes.draw do
  #get 'users/index'

  resources :users

  get 'aa', to: 'home#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

