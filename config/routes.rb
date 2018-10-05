Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'teacher', to: 'pages#teacher'
  get 'play', to:'pages#play'
  resources :reviews, only: :index
end
