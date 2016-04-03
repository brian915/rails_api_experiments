# rails_api_tutorial

###My Version###

  1. setup up Ruby & Rails App with rbenv & rails generator
  Rails 4.2.4, Ruby 2.2.3
  2. modify Gemfile to include 'active_model_serializers'
  3. replace 'debugger' with 'pry-byebug'
  3. initialize repo
  4. setup db :
        createuser -r -d -l -w api 
        createdb -U api -w api_development 
        createdb -U api -w api_test 
        psql -U api -d api_development 
  5. generate some controllers/models/migrations/view CRUD
  6. push to heroku & test 
  7. first test : bundle exec rspec lib/spec/api_constraints_spec.rb
  8. tests require POW installed for use of subdomain without mucking too deep in apache , nginx etc ...
  9. added gem 'responders' to get responds_to / responds_with functionality back
  10. added devise gem, generated user , added flash to application.html.erb , ran first migration :
      ee Gemfile
      bundle install 
      rails g devise:install 
      ee app/views/layouts/application.html.erb 
      rails g devise User 
      rake db:migrate 
      rake db:test:prepare
  11. shoulda_matchers 3.0 completely different implementation
       https://github.com/thoughtbot/shoulda-matchers#getting-started
  12. rspec had to be updated as well , to 3.4
      https://relishapp.com/rspec/rspec-rails/docs/upgrade
  13. curl examples not working, require **.json** at the end of the request :
      curl -H 'Accept: application/vnd.marketplace.v1' http://api.rails_api_tutorial.dev/users/1.json 
  ...jumped ahead in that crap tutorial b/c all the tests were broken as was the user authentication ...
  14. generated a Product model & migration : 
       rails generate model Product  title:string price:decimal published:boolean  user_id:integer:index
  15. removed relationship between user and product, not required for this exercise
      ee app/models/user.rb 
      ee app/models/product.rb 
      rails generate migration RemoveUserIdFromProducts user_id:integer:index
      rake db:migrate 
  16. run migrations & add user on heroku :
      User.create({email: "example@marketplace.com", password: "12345678",password_confirmation: "12345678"})
      
###A Note on Sources###

The tutorial is seriously flawed - most of the code taken from RailsCast #350, better to use both in tandem 
http://railscasts.com/episodes/350-rest-api-versioning?view=asciicast

##NEXT##

~ get Product endpoints working in Postman

~ learn how to document with Swagger 

~ api serializer , for what it's worth 

