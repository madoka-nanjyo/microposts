Rails.application.routes.draw do
  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get    'profile' ,to:'users#followers'
  get 'setting' , to: 'sessions#edit'
   resources :users do
member do
  get :followings
  get :followers
 end
end

 

  
  resources :users
  resources :sessions, only: [:new, :create, :destroy, :edit, :update]
  resources :microposts
  resources :relationships, only: [:create, :destroy]
  resources :following_users
  resources :follower_users
end