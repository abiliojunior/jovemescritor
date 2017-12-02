Rails.application.routes.draw do
  resources :cenas
  resources :capitulos
  resources :projetos
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
