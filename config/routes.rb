Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'login', to: 'sessions#sign_in'
  post 'login', to: 'sessions#login'

  resources :boards, only: :index
end
