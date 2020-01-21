Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/about' => 'welcome#about'

  resources :trainers, only: [:new, :create]
  resources :cards, only: [:index, :show]
end
