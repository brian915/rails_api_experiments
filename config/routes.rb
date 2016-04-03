require 'api_constraints'

Rails.application.routes.draw do
  
  devise_for :users
  # Api definition
  namespace :api, defaults: { formats: :json }, 
            constraints: { subdomain: 'api' }, path: '/'  do

    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: :true) do
#      resources :products
      resources :users, :only => [:show, :create]
    end
    scope module: :v2, constraints: ApiConstraints.new(version: 2) do
 #     resources :products
      resources :users, :only => [:show, :create]
    end

  end
  
  mount GrapeSwaggerRails::Engine => '/swagger'

  #root to: 'products#index'  


end





