Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index' => 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/tags/:tag', to: 'tasks#index', as: tag
  resources :tasks
  get '/tags/:tag', to: 'tasks#index', as: :tag
  root 'welcome#index'
end
