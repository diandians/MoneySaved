Rails.application.routes.draw do


  get 'search/show'

  get 'rank/show'

  get 'orders/create'

  get 'orders/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'

  get 'home/contact_info'

  #Login

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'categories/show'
  get 'comments/create'
  get 'likes/create'
  
   #admin section
  get '/allusers', to: 'admin#usersindex'  
  post '/block', to: 'users#block'

  get '/userlike', to: 'users#user_like_list'
  get '/userorder', to: 'users#user_order_list'
  

  #resources
  resources :admin
  resources :users

  resources :deals

  resources :categories, only: [:show]

  resources :comments, only: [:create]

  resources :likes, only: [:create, :destroy]

  resources :orders, only: [:create, :show, :new]
  
end
