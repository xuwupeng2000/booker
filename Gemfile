source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

gem 'rails', '~> 5.2.2'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'redis-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'aasm'

gem 'turbolinks', '~> 5'
gem 'react-rails'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'hashie'

gem 'simple_form'
gem 'apipie-rails'
gem 'will_paginate'
gem 'premailer-rails'

gem 'business_time'
gem 'holidays'

gem 'cancancan', '~> 2.0'

gem 'devise'
gem 'omniauth'
gem 'dotenv-rails', require: 'dotenv/rails-now'

gem 'fast_jsonapi'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'pry-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
