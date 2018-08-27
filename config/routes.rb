Rails.application.routes.draw do
  root 'welcome#home'
  resources :posts
  get 'signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :users, except: [:new]
end
