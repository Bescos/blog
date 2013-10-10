source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'therubyracer'
gem 'sqlite3'
gem 'ransack'
gem 'jquery-rails'
gem 'turnout'   # Block app for maintenance
gem 'lorem'
gem 'devise'

group :test, :development do
    gem 'factory_girl_rails'
    gem 'reek'
    gem 'brakeman'
    gem 'rspec-rails'
    gem 'capybara'
    gem 'guard-rspec'
end

group :development do
    gem 'annotate'             # annotate rails model (bundle exec annotate)
    gem 'rails_best_practices' # Test rails best practices
    gem 'better_errors'     # Create better error page
    gem "binding_of_caller" # Improvement of better-errors
    gem 'railroady'             # Create SVG diagram of model and controllers (rake diagram:all )
    gem 'request-log-analyzer'  # Analyze logs : request-log-analyzer file.log
    gem 'hirb'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
    gem 'therubyrhino'
    # See https://github.com/sstephenson/execjs#readme for more supported runtimes
    gem 'uglifier', '>= 1.0.3'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
