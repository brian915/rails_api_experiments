require 'api_constraints'

Rails.application.routes.draw do
  
  devise_for :users
  # Api definition
  namespace :api, defaults: { formats: :json }, 
            constraints: { subdomain: 'api' }, path: '/'  do

    scope module: :v1, constraints: ApiConstraints.new(version: 1) do
      resources :products
      resources :users, :only => [:show]
    end
    scope module: :v2, constraints: ApiConstraints.new(version: 2, default: :true) do
      resources :products
    end

  end
  
  mount GrapeSwaggerRails::Engine => '/swagger'

  resources :products
  root to: 'products#index'  


end





