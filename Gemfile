source 'https://rubygems.org'

gem 'rails', '4.2.6'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'

# Frontend / UX
gem 'react-rails', '~> 1.7.0'
gem 'slim-rails'
gem 'bootstrap-sass'
gem 'will_paginate-bootstrap'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Upcoming Rails 5 JSON API server (included in Rails 5)
gem 'rails-api'

# Use active_model_serializers for JSON serialziation
gem 'active_model_serializers'

# Generate docs for our restful API
# gem 'swagger-docs'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors',            require: 'rack/cors'

# Twitter style hashtag extraction and processing
gem 'twitter-text'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Puma as the app server
gem 'puma'

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'better_errors'
  gem 'quiet_assets'
end

group :development, :test do
  # Use RSpec for specs
  gem 'rspec-rails', '~> 3.0'

  # Use Factory Girl for generating random test data
  gem 'factory_girl_rails'
  gem 'faker'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'pry-rails'
  gem 'pry-rescue'
end

group :test do
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end
