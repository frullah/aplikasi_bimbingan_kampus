source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.0.alpha2'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails', '>= 0.3.4'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails', '>= 0.7.11'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails', '>= 0.4.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder", "~> 2.7"

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Use Sass to process CSS
# gem "sassc-rails", "~> 2.1"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'factory_bot_rails'
  gem 'pry', '~> 0.14.1'
  gem 'standard'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console', '>= 4.1.0'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler", ">= 2.3.3"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem 'spring', github: 'rails/spring', branch: '7ca995584bedb11e61c529ae066b1172cf263c60'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'

  gem 'rspec-rails'
  gem 'spring-commands-rspec', '~> 1.0'
end

gem 'rexml'

gem 'devise', git: 'https://github.com/strobilomyces/devise.git', branch: 'patch-1'

gem 'bootstrap', '~> 5.1'

gem 'cssbundling-rails', '~> 0.1.8'

group :development do
  gem 'guard-livereload', require: false
  gem 'rack-livereload'

  gem 'guard-rspec', require: false
end

group :test do
  gem 'rails-controller-testing', '~> 1.0'
  gem 'shoulda-matchers', '~> 4.0'
end

gem 'bootstrap_form', github: 'bootstrap-ruby/bootstrap_form', branch: 'bootstrap-5'

gem 'avo', '~> 1.13'

gem 'activestorage-validator', '~> 0.1.4'
