source 'https://rubygems.org'


# Specify ruby version for heroku
ruby "2.3.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.beta3', '< 5.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.x'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use devise for user authentication
gem 'devise', '~> 4.0'

# Use the will_paginate gem for pagination. Provides the #page method
# used in controllers for pagination
gem 'will_paginate', '~> 3.1'

# Use Kazus for a convenient logging method
gem 'kazus', git: 'git://github.com/esBeee/kazus.git'

# Add some basic translations
gem 'rails-i18n', '~> 5.0.0.beta3'

# Heroku dependency
gem 'rails_12factor', '~> 0.0.3'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Use RSpec for testing
  gem 'rspec-rails', '~> 3.5.0.beta3'

  # Use Factory Girl to build, create or stub test-objects
  gem 'factory_girl_rails', '~> 4.7'
end

group :test do
  # Use the capybara integration testing tool to simulate user behaviour in RSpec tests
  gem 'capybara', '~> 2.7'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
