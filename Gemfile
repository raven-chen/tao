source 'https://ruby.taobao.org'
ruby '2.2.3'

gem 'rails', '3.2.22.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem "twitter-bootstrap-rails", :branch => "bootstrap3"
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'unicorn', '4.9.0'
end

gem 'rails_12factor'
gem "bugsnag"

group :development, :test do
  gem "pry"
end

gem 'jquery-rails', '~> 2.0.0'
gem 'jquery-ui-rails'

gem 'rails_admin'
gem 'ckeditor'
gem "cancan"
gem "kaminari"
gem 'acts-as-taggable-on', '~> 3.4'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
group :development do
  gem 'capistrano', '~> 3.4.0'
  gem 'capistrano-rails'
end

# To use debugger
# gem 'debugger'

group :test do
  gem 'factory_girl'
  gem "factory_girl_rails"
  gem "shoulda-context"
  gem "shoulda-matchers"
end

gem "devise"
gem "soft_deletion"
