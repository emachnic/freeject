source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'
gem 'tzinfo', '~> 0.3.29'
gem 'rdoc', '~> 3.8'
# Bundle edge Rails instead:
#gem 'rails',     :git => 'git://github.com/rails/rails.git'

# Select which database to use
# Can use different ones for different environments
# gem 'mysql2'
# gem 'pg'

# Asset template engines
gem 'haml'
gem 'sass'
gem 'coffee-script'
gem 'uglifier'
gem 'jquery-rails'
gem 'formtastic'
gem 'navigasmic'

gem 'redis'
gem 'execjs'
#gem 'client_side_validations'

# Authentication
gem 'devise'
gem "oa-oauth", :require => "omniauth/oauth"

gem 'decent_exposure'

group :development, :test do
  gem 'sqlite3'
  gem "rspec-rails", "~> 2.6.1.beta1" 
  gem 'cucumber-rails', "~> 0.5.0.beta1"
  gem 'capybara', "~> 1.0.0.beta1"
  gem 'launchy'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'guard'
  gem 'rb-fsevent'
  gem 'growl'
  gem 'guard-bundler'
  gem 'guard-cucumber'
  gem 'guard-haml'
  gem 'guard-livereload'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard-spork'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :production do
  #gem 'mysql2'
  gem 'pg'
  #gem 'therubyracer-heroku'
end
