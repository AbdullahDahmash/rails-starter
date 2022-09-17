source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem "rails", "7.0.2.3" # until rails 7.1
# Use postgresql as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma'
# Use Redis adapter to run Action Cable in production
gem 'redis'
# Use Active Model has_secure_password
gem 'bcrypt'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "dotenv-rails"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', "~> 4.2.0"
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'rails-erd', github: 'voormedia/rails-erd'
  gem 'guard'
  gem 'guard-livereload'
  gem "rack-livereload"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# Compatiblity gems for 3.1 ruby
gem 'net-smtp', require: false
gem 'net-pop', require: false
gem 'net-imap', require: false

gem "image_processing"
gem 'faker', github: 'faker-ruby/faker'
gem "kredis"
gem "heroicon"
gem "rails-i18n"
gem "mjml"
gem "active_link_to"
gem "propshaft"
gem "importmap-rails"
gem "cssbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "procore-sift"
gem "resque"
gem "resque-scheduler"
gem 'memoist'
gem 'date_validator'
gem 'cocoon'
gem "figaro"
gem 'sd_notify'
gem "aws-sdk-s3"
gem 'activejob-uniqueness'
gem "translate_enum"
gem "active_storage_validations"
gem 'pagy'
gem 'devise'
