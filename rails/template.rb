file 'Gemfile', <<~GEMFILECODE
  source 'https://rubygems.org'

  ruby '2.5.1'

  # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
  gem 'rails', '~> 5.2.1'
  # Use postgresql as the database for Active Record
  gem 'pg', '>= 0.18', '< 2.0'
  # Use Puma as the app server
  gem 'puma', '~> 3.11'
  # Use SCSS for stylesheets
  gem 'sass-rails', '~> 5.0'
  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '>= 1.3.0'
  # See https://github.com/rails/execjs#readme for more supported runtimes
  # gem 'mini_racer', platforms: :ruby

  # Use CoffeeScript for .coffee assets and views
  gem 'coffee-rails', '~> 4.2'
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

  group :development do
    gem 'listen', '>= 3.0.5', '< 3.2'
    gem 'spring'
    gem 'spring-watcher-listen', '~> 2.0.0'
    gem 'spring-commands-rspec'
    gem 'rubocop', require: false
    gem 'guard'
    gem 'guard-rspec'
    gem 'terminal-notifier-guard', '~> 1.6.1'
    gem 'terminal-notifier'
  end

  group :development, :test do
    gem 'awesome_print'
    gem 'pry-byebug'
    gem 'rspec-rails'
    gem 'shoulda-matchers'
    gem 'factory_bot_rails'
  end

GEMFILECODE

# Rubocop
########################################
run 'curl -L https://raw.githubusercontent.com/boddhisattva/dotfiles/master/.rubocop.yml > .rubocop.yml'

after_bundle do
  generate('rspec:install')

  inject_into_file 'spec/rails_helper.rb', after: "RSpec.configure do |config|\n" do
    "  config.include FactoryBot::Syntax::Methods\n\n"
  end

  rails_command("db:create")
end
