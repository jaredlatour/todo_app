Rails.application.routes.draw do
  resources :tasks
  resources :tasks do
    member do
      put :change
    end
  end
  devise_for :views
  devise_for :users
  root 'pages#home'

  get 'about' => 'pages#'
end
