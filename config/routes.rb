Rails.application.routes.draw do

  root 'welcome#index'
  devise_for :users
  resource :users do
    resource :lists
  end

end
