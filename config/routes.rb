Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
    devise_scope :user do
    post 'users/guest_login', to: 'users/sessions#guest_login'
  end
  root to: "posts#index"
  resources :posts do

    resources :comments, only: :create
    
    collection do
      get 'search'
      get 'help'
      get 'contact'
      get 'guitar'
      get 'bass'
      get 'amp'
      get 'effect'
      get 'drum'
      get 'keyboard'
      get 'pa'
      get 'accessory'
      get 'ukulele'
      get 'sax'
      get 'trumpet'
      get 'violin'
      get 'strings'
      get 'wind'
      get 'dtm'
      get 'others'
    end
  end
  

  resources :users, only: :show
end