source 'https://rubygems.org'
ruby '2.2.3'
gem 'rails', '4.2.4'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'

gem 'responders', '~> 2.0'
gem 'devise'

#Api gems
gem 'active_model_serializers'
gem 'grape-swagger-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem "rspec-rails", "~> 3.4"
  gem "factory_girl_rails"
  gem 'ffaker'
  gem "shoulda-matchers", "3.1.1"
end

group :production do
  gem 'puma'
end

