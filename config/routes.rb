Rails.application.routes.draw do
  resources :countries
  resources :artifacts
  resources :accesses
  resources :tech_trees
  resources :tech_instances
  resources :master_teches
  resources :users

  get '/countries/:id/tech', to: 'countries#tech'
  post '/artifacts/:id/combine', to: 'artifacts#combine'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root    to: 'countries#root'
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'session#delete'

end
