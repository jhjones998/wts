Rails.application.routes.draw do
  resources :tech_instances
  resources :master_teches
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root    'welcome#index'
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'session#delete'

end
