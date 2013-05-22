source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.8'
gem 'bootstrap-sass'
gem 'devise'
gem 'cancan'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

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

group :test, :development do
  gem 'rspec-rails', '~> 2.11'
  gem 'sqlite3'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'hirb'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'factory_girl', '2.6.4'
end

group :production do
  gem 'pg'
  gem 'unicorn'
end
