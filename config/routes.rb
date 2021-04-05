Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'login', to: 'auth#create'
      resources :users do 
        member do
          patch 'update_password'
        end
      end
      resources :categories
      resources :jobs
      resources :opinions do
        collection do
          get 'random'
        end
      end
    end
  end
  
end
