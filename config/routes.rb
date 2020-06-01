Rails.application.routes.draw do
  get 'welcome/index'
  # get 'welcome/dogs'      Did not use it
  get 'welcome/lists'
  get 'welcome/new'

  resources :lists
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'
end
