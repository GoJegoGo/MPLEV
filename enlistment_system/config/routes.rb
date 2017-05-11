Rails.application.routes.draw do
  
  resources :payments
  devise_for :views
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "creatives#index"
  get "/assessments/index.html.erb", to: "assessments#index", as: "index"

  resources :students
  
  resources :assessments

  namespace :admin do
    resources :class_catalogs
    resources :packages
    resources :students
    resources :periods
    resources :assessments
    get "/pages/index.html.erb", to: "pages#index"
  end
end
