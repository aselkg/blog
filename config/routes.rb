Rails.application.routes.draw do
  root to: 'orders#index'
  resources :orders
  resources :customers
  get 'owners/index'

  get 'owner/index'

   # for all routes, we can use this single line or routes down bellow
  resources :owners
  get '/pages', to: 'pages#index'
  get '/pages/new', to: 'pages#new', as:'new_page'
  post 'pages', to: 'pages#create'
  get '/pages/:id', to: 'pages#show', as:'page'
  get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  patch '/pages/:id/', to:'pages#update'
  delete '/pages/:id', to: 'pages#destroy'
 
  #instead of repeating '/posts/:post_id/comments',  can do following instead
  resources :posts do
  resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


