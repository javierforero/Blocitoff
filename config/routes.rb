Rails.application.routes.draw do

  root 'welcome#index'
  devise_for :users
  resources :users do
    resources :lists
  end

end
