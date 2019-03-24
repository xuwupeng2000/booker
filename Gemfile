# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

gem 'pg'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2'
gem 'redis-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'aasm'

gem 'hashie'
gem 'jbuilder', '~> 2.5'

gem 'formtastic', '~> 3.0'
gem 'simple_form'

gem 'apipie-rails'
gem 'premailer-rails'
gem 'will_paginate'

gem 'business_time'
gem 'holidays'

gem 'cancancan', '~> 2.0'

gem 'devise'
gem 'devise-jwt', '~> 0.5.8'
gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'omniauth'
gem 'omniauth-facebook'

gem 'fast_jsonapi'
gem 'money-rails', '~>1.12'

gem 'webpacker'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'database_cleaner'
  gem "json_matchers"
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
