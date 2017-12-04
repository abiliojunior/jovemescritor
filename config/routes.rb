Rails.application.routes.draw do
  get 'sessions/new'

  resources :usuarios
  get 'static_pages/home'

  get 'static_pages/help'
  
  get '/signup', to: 'usuarios#new'

  resources :cenas
  resources :capitulos
  resources :projetos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'
  root 'static_pages#home'
  
  resources :usuarios
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
