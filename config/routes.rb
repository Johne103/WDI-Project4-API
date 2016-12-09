Rails.application.routes.draw do
  scope :api do
    resources :products
    resources :tags
    resources :users, except: [:create]

    post 'register', to: 'auth#register'
    post 'login', to: 'auth#login'
  end
    # For details on the DSL available within this file, see http://guides.
end
