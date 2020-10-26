source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails',      '~> 6.0.2', '>= 6.0.2.2'  
gem 'puma',       '4.3.5'  # Use Puma as the app server
gem 'sass-rails', '>= 6'  # Use SCSS for stylesheets
gem 'webpacker',  '4.2.2' # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'turbolinks', '5.2.1' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder',   '2.10.0' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'bootsnap',   '1.4.6', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'bcrypt'
gem 'bootstrap-sass'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'rails-controller-testing'
end

group :development do
  gem 'sqlite3', '1.4.2' # Use sqlite3 as the database for development 
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

group :production do
  gem 'pg', '1.2.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
