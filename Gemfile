source 'https://rubygems.org'
source "http://gems.github.com"

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
#gem 'rails', :git => 'git://github.com/rails/rails.git'
#gem 'activerecord-deprecated_finders', :git => 'git://github.com/rails/activerecord-deprecated_finders.git'
#gem 'journey', :git => 'git://github.com/rails/journey.git'

gem 'thin'
group :development do
  gem 'sqlite3'
  gem 'mailcatcher'
end

group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  #gem 'sass-rails'
  gem 'less-rails'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem "slim-rails"
gem "devise"
gem "cancan"
gem 'simple_form'
gem 'dynamic_form'
gem 'twitter-bootstrap-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
