Rails.application.routes.draw do

  # Api definition
  namespace :api, defaults: { formats: :json } do
    constraints: { subdomain: 'api' }, path: '/'  do
      scope module: :v1 do
        #resources go here 
      end
    end
  end

  mount GrapeSwaggerRails::Engine => '/swagger'
  
end
