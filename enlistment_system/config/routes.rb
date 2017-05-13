Rails.application.routes.draw do
  
  resources :payments
  resources :students
  devise_for :views
  devise_for :users
  devise_scope :user do
    authenticated :user do
      resources :students
      resources :assessments
        resources :class_catalogs
        resources :packages
        resources :students do
          resources :payments
        end
        resources :periods
        resources :assessments
        get "/dashboard", to: "pages#index"

      root to: "pages#index"
    end

    unauthenticated :user do
      get "/assessments/index.html.erb", to: "assessments#index", as: "index"
      root to: "creatives#index"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  


end
