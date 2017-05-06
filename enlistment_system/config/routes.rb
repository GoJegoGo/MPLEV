Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "creatives#index"





  resources :assessments
  resources :class_catalogs
  resources :class_lists
  resources :packages
  resources :students
end
