Rails.application.routes.draw do
  root to: 'home#index'
  namespace :admin do
    resources :user_actions
    resources :services
    resources :companies
    resources :users
  end

  namespace :api do
    resources :user_actions, except: [:new, :edit]
    resources :services, except: [:new, :edit]
    resources :companies, except: [:new, :edit]
    resources :users, except: [:new, :edit]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, path: 'auth'
end
