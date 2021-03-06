Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  get '/', to: 'posts#index'
  resources :users, only: [:index, :show, :create] do
    member do
      get :likes
    end
  end
    
  resources :posts #, only: [:create, :destroy, :show, :index, :new]
  resources :categories
  resources :favorites, only: [:create, :destroy]
  
  # 例外
  get '*not_found', to: 'application#routing_error'
  post '*not_found', to: 'application#routing_error'

end