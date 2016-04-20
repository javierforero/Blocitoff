Rails.application.routes.draw do

  root 'welcome#index'
  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:index, :create, :show]
  end

end
