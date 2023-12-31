# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'
gem "binding_of_caller"
gem 'rails_admin'
gem 'rack-test'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.O.3'
# Use postgresql as the database for Active Record
# gem 'pg', '>= 0.18', '< 2.0'
gem 'pg', '~> 1.1', '>= 1.1.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'duktape'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 3.26'
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.2'
  gem 'guard-rspec', '~> 4.7', '>= 4.7.3'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'
  gem 'vcr', '~> 5.0'
end

group :development do
  # Access an interactive console on exception pages
  # or by calling 'console' anywhere in the code.
  gem 'listen'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '>= 2.15'd
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.3'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
  gem 'chromedriver-helper', '~> 2.1', '>= 2.1.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'better_errors', '~> 2.5', '>= 2.5.1'

gem 'bootstrap', '~> 4.3', '>= 4.3.1'

gem 'devise', '~> 4.6', '>= 4.6.2'

gem 'simple_form', '~> 4.1'

gem 'rubocop', '~> 0.73.0'

gem 'faker', '~> 1.9', '>= 1.9.6'

gem 'rails-controller-testing', '~> 1.0', '>= 1.0.4'

gem 'slim', '~> 4.0', '>= 4.0.1'

gem 'dotenv', '~> 2.7', '>= 2.7.4'