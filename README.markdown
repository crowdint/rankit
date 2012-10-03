# Rankit

Post stuff, rank it, let others rank, comment

# Install

Gemfile:

    gem 'rankit'

Shell:

    bundle install

# Usage

Mount the engine

routes.rb:

    YourApp::Application.routes.draw do
      mount Rankit::Engine, :at => "/rankit"
    end

Copy its migrations

    bundle exec rake rankit:install:migrations

Run them

    bundle exec rake db:migrate

Create a seed file with a test user

db/seed.rb

    user = Rankit::User.new :email => 'test@example.com'
    user.password = '12345'
    user.password_confirmation = '12345'

    user.save

Seed the database

    bundle exec rake db:seed

Start the server

    bundle exec rails server

Go to `127.0.0.1:3000/rankit/users/sign_in`, login and enjoy.

# About the Author

[Crowd Interactive](http://www.crowdint.com) is a leading Ruby and Rails consultancy
firm based in Mexico currently doing business with startups in the United States.
We specialize in building and growing your existing development team, by adding
engineers onsite or offsite. We pick our clients carefully, as we only work with
companies we believe in. Find out more about us on our [website](http://www.crowdint.com).
