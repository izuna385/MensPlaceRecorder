Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/create'
  get 'posts/destroy'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
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
  resources :favorites, only: [:create, :destroy]

end