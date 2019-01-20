Rails.application.routes.draw do
  get 'welcome/index' => 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tasks

  root 'welcome#index'
end
