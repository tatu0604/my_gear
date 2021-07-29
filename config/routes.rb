Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
    devise_scope :user do
    post 'users/guest_login', to: 'users/sessions#guest_login'
  end
  root to: "posts#index"
  resources :posts
  resources :users, only: :show
end